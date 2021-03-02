version 1.0

task Bamrank {
  command <<<
    bamrank
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}