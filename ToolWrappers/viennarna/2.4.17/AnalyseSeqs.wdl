version 1.0

task AnalyseSeqs {
  command <<<
    AnalyseSeqs
  >>>
  runtime {
    docker: "quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0"
  }
  output {
    File out_stdout = stdout()
  }
}