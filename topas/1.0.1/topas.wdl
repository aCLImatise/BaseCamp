version 1.0

task Topas {
  input {
    String? analyseAnalyseVcf
    String? genGenCons
    String? joinJoinExprTables
    String? normNormExprTable
    String? phyPhyCc
  }
  command <<<
    topas \
      ~{analyseAnalyseVcf} \
      ~{genGenCons} \
      ~{joinJoinExprTables} \
      ~{normNormExprTable} \
      ~{phyPhyCc}
  >>>
}