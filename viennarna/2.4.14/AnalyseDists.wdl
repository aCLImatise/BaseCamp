version 1.0

task AnalyseDists {
  input {
    Boolean xX
    String? analyseAnalyseDist
    String? swnSwn
  }
  command <<<
    AnalyseDists \
      ~{analyseAnalyseDist} \
      ~{true="-X" false="" xX} \
      ~{swnSwn}
  >>>
}