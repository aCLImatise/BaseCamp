version 1.0

task Fixfasta {
  command <<<
    fixfasta
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}