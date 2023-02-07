package com.ssaky.swus.db.repository.study;

import com.ssaky.swus.db.entity.member.Member;
import com.ssaky.swus.db.entity.study.Study;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Repository
public interface StudyRepository extends JpaRepository<Study, Integer> {

    @Transactional
    Study save(Study study);

    <T> Optional<T> findByMemberId(int memberId, Class<T> type);

    long countByMemberId(int memberId);

}
