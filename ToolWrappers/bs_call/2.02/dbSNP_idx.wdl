version 1.0

task DbSNPIdx {
  command <<<
    dbSNP_idx
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}