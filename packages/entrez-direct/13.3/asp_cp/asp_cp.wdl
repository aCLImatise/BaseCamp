version 1.0

task Aspcp {
  command <<<
    asp_cp
  >>>
  output {
    File out_stdout = stdout()
  }
}