version 1.0

task FilterjuncbyROCarguNonCanonical {
  command <<<
    filterjuncbyROCarguNonCanonical
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}