version 1.0

task Mergeqcpl {
  command <<<
    mergeqc_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}