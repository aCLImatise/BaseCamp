version 1.0

task Beauti {
  command <<<
    beauti
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}