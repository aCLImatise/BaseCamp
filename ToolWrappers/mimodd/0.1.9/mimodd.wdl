version 1.0

task Mimodd {
  command <<<
    mimodd
  >>>
  output {
    File out_stdout = stdout()
  }
}