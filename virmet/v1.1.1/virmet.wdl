version 1.0

task Virmet {
  command <<<
    virmet
  >>>
  output {
    File out_stdout = stdout()
  }
}