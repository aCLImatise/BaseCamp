version 1.0

task MaxQuantPLibdll {
  command <<<
    MaxQuantPLib_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}