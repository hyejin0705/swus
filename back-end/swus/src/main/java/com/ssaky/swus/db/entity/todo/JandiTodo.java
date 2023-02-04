package com.ssaky.swus.db.entity.todo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import com.ssaky.swus.db.entity.member.Member;
import com.ssaky.swus.db.repository.todo.MemberTodoCount;
import lombok.*;

import javax.persistence.*;

import java.io.Serializable;
import java.sql.Date;

import static javax.persistence.FetchType.LAZY;

@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
@Getter
@NoArgsConstructor
@ToString
@JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
public class JandiTodo {
// 복합키 이용 시, Serializable 을 implement 해야 함

    public JandiTodo(Date studyAt, MemberTodoCount memberTodoCount){
        JandiTodoId jandiTodoId = JandiTodoId.builder().memberId(memberTodoCount.getMemberId()).studyAt(studyAt).build();
        this.jandiTodoId = jandiTodoId;
        Member member = Member.builder().id(memberTodoCount.getMemberId()).build();
        this.member = member;
        this.todoDoneCount = memberTodoCount.getTodoCount();
    }

    @EqualsAndHashCode.Include
    @EmbeddedId
    private JandiTodoId jandiTodoId;

    @MapsId("memberId") // 이렇게만 지정해 주면 PK가 됨
    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "member_id")
    public Member member;

    @Column(name = "todo_done_count")
    private int todoDoneCount;
}
