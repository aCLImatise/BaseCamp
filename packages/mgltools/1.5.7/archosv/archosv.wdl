version 1.0

task Archosv {
  command <<<
    archosv
  >>>
  output {
    File out_stdout = stdout()
  }
}