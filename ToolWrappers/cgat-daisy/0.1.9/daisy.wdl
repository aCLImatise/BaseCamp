version 1.0

task Daisy {
  command <<<
    daisy
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}