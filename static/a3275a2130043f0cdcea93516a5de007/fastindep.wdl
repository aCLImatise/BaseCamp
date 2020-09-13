version 1.0

task Fastindep {
  command <<<
    fastindep
  >>>
  output {
    File out_stdout = stdout()
  }
}