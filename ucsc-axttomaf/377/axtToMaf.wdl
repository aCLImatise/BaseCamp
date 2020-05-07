version 1.0

task AxtToMaf {
  input {
    Boolean scoreScore
    Boolean scoreScoreZero
    String? inInAXt
    String? tTSizes
    String? qQSizes
    String? outOutMaf
  }
  command <<<
    axtToMaf \
      ~{inInAXt} \
      ~{true="-score" false="" scoreScore} \
      ~{true="-scoreZero" false="" scoreScoreZero} \
      ~{tTSizes} \
      ~{qQSizes} \
      ~{outOutMaf}
  >>>
}