version 1.0

task Belresources {
  command <<<
    bel_resources
  >>>
  output {
    File out_stdout = stdout()
  }
}