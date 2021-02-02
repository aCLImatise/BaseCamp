version 1.0

task DatabaseModulespy {
  command <<<
    database_modules_py
  >>>
  output {
    File out_stdout = stdout()
  }
}