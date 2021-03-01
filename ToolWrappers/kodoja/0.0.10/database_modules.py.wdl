version 1.0

task DatabaseModulespy {
  command <<<
    database_modules_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}