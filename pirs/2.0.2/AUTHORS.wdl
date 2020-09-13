version 1.0

task AUTHORS {
  command <<<
    AUTHORS
  >>>
  output {
    File out_stdout = stdout()
  }
}