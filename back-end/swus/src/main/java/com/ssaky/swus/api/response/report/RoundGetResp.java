package com.ssaky.swus.api.response.report;

import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

import java.time.LocalDate;
import java.util.List;

//레포트 회차기준 배열의 요소가 될 회차별로 담고 있을 데이터 모음
@Getter
@ToString
@JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
@AllArgsConstructor
public class RoundGetResp {

    private int round;
    private String content;
    private LocalDate studyAt;
    private List<MemberGetResp> members;
}
