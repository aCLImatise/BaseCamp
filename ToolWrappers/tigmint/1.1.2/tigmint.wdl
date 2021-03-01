version 1.0

task Tigmint {
  command <<<
    tigmint
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}