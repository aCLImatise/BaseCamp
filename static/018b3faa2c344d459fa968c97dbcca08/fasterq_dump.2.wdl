version 1.0

task Fasterqdump2 {
  command <<<
    fasterq_dump_2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}