version 1.0

task Mdvalidater {
  command <<<
    mdvalidater
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}