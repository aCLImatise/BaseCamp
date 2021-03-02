version 1.0

task Listmodules {
  command <<<
    list_modules
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}