version 1.0

task Modules {
  command <<<
    modules
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}