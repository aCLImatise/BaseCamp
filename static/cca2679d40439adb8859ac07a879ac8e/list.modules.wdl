version 1.0

task Listmodules {
  command <<<
    list_modules
  >>>
  output {
    File out_stdout = stdout()
  }
}