version 1.0

task MaxQuantPLibdll {
  command <<<
    MaxQuantPLib_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}