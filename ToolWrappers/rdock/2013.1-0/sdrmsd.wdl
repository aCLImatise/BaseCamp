version 1.0

task Sdrmsd {
  command <<<
    sdrmsd
  >>>
  output {
    File out_stdout = stdout()
  }
}