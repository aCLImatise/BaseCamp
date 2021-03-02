version 1.0

task Dnaml {
  command <<<
    dnaml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}