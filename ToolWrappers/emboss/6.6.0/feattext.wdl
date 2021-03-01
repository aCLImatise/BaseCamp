version 1.0

task Feattext {
  command <<<
    feattext
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}