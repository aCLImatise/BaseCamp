version 1.0

task Xtract {
  command <<<
    xtract
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}