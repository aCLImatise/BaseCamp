version 1.0

task Belresources {
  command <<<
    bel_resources
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}