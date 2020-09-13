version 1.0

task Tigmint {
  command <<<
    tigmint
  >>>
  output {
    File out_stdout = stdout()
  }
}