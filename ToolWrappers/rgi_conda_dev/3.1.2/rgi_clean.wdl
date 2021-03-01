version 1.0

task RgiClean {
  command <<<
    rgi_clean
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}