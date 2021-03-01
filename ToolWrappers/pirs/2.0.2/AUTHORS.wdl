version 1.0

task AUTHORS {
  command <<<
    AUTHORS
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}