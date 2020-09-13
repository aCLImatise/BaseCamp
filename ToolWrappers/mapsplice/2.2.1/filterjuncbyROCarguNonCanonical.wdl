version 1.0

task FilterjuncbyROCarguNonCanonical {
  command <<<
    filterjuncbyROCarguNonCanonical
  >>>
  output {
    File out_stdout = stdout()
  }
}