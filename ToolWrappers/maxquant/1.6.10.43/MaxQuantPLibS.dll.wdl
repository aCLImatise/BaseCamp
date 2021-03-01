version 1.0

task MaxQuantPLibSdll {
  command <<<
    MaxQuantPLibS_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}