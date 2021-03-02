version 1.0

task Dnainvar {
  command <<<
    dnainvar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}