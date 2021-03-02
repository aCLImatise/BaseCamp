version 1.0

task Codeml {
  command <<<
    codeml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}