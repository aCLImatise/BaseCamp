version 1.0

task Logname {
  command <<<
    logname
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}