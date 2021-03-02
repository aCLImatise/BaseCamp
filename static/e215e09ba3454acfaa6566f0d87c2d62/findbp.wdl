version 1.0

task Findbp {
  command <<<
    findbp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}