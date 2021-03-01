version 1.0

task Vcfsamplenames {
  command <<<
    vcfsamplenames
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}