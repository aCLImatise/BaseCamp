version 1.0

task EvalAlignment.pl {
  input {
    Boolean alnAln
    Boolean statisticStatistic
    Boolean noNoFigures
    Boolean logLog
  }
  command <<<
    eval_alignment.pl \
      ~{true="--aln" false="" alnAln} \
      ~{true="--statistic" false="" statisticStatistic} \
      ~{true="--nofigures" false="" noNoFigures} \
      ~{true="--log" false="" logLog}
  >>>
}