version 1.0

task MaxQuantPLibSdll {
  command <<<
    MaxQuantPLibS_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}