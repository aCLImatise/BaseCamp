version 1.0

task RmFaDups {
  command <<<
    rmFaDups
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}