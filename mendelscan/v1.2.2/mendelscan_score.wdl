version 1.0

task MendelscanScore {
  input {
    Boolean segSegScoreCaseRef
    Boolean segSegScoreCaseHet
    Boolean segSegScoreCaseHom
    String segSegScoreControlHet
    String segSegScoreControlHom
    Boolean anAnNoScore1
    Boolean anAnNoScore2
    Boolean anAnNoScore3
    Boolean anAnNoScore4
    Boolean anAnNoScore5
    Boolean anAnNoScore6
    Boolean anAnNoScore7
    Boolean anAnNoScore8
    Boolean anAnNoScore9
    String anAnNoScore10
    String anAnNoScore11
    String anAnNoScore12
    String anAnNoScore13
    String anAnNoScore14
    String anAnNoScore15
    String anAnNoScore16
    String anAnNoScore17
  }
  command <<<
    mendelscan score \
      ~{true="--seg-score-case-ref" false="" segSegScoreCaseRef} \
      ~{true="--seg-score-case-het" false="" segSegScoreCaseHet} \
      ~{true="--seg-score-case-hom" false="" segSegScoreCaseHom} \
      ~{if defined(segSegScoreControlHet) then ("--seg-score-control-het " +  '"' + segSegScoreControlHet + '"') else ""} \
      ~{if defined(segSegScoreControlHom) then ("--seg-score-control-hom " +  '"' + segSegScoreControlHom + '"') else ""} \
      ~{true="--anno-score-1" false="" anAnNoScore1} \
      ~{true="--anno-score-2" false="" anAnNoScore2} \
      ~{true="--anno-score-3" false="" anAnNoScore3} \
      ~{true="--anno-score-4" false="" anAnNoScore4} \
      ~{true="--anno-score-5" false="" anAnNoScore5} \
      ~{true="--anno-score-6" false="" anAnNoScore6} \
      ~{true="--anno-score-7" false="" anAnNoScore7} \
      ~{true="--anno-score-8" false="" anAnNoScore8} \
      ~{true="--anno-score-9" false="" anAnNoScore9} \
      ~{if defined(anAnNoScore10) then ("--anno-score-10 " +  '"' + anAnNoScore10 + '"') else ""} \
      ~{if defined(anAnNoScore11) then ("--anno-score-11 " +  '"' + anAnNoScore11 + '"') else ""} \
      ~{if defined(anAnNoScore12) then ("--anno-score-12 " +  '"' + anAnNoScore12 + '"') else ""} \
      ~{if defined(anAnNoScore13) then ("--anno-score-13 " +  '"' + anAnNoScore13 + '"') else ""} \
      ~{if defined(anAnNoScore14) then ("--anno-score-14 " +  '"' + anAnNoScore14 + '"') else ""} \
      ~{if defined(anAnNoScore15) then ("--anno-score-15 " +  '"' + anAnNoScore15 + '"') else ""} \
      ~{if defined(anAnNoScore16) then ("--anno-score-16 " +  '"' + anAnNoScore16 + '"') else ""} \
      ~{if defined(anAnNoScore17) then ("--anno-score-17 " +  '"' + anAnNoScore17 + '"') else ""}
  >>>
}