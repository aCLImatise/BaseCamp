version 1.0

task Ts {
  command <<<
    ts
  >>>
  output {
    File out_stdout = stdout()
  }
}