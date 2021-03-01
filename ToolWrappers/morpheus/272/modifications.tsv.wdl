version 1.0

task Modificationstsv {
  command <<<
    modifications_tsv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}