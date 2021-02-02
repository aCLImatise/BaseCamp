version 1.0

task Virsorter {
  command <<<
    virsorter
  >>>
  output {
    File out_stdout = stdout()
  }
}