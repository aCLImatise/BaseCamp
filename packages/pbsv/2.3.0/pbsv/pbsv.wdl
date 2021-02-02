version 1.0

task Pbsv {
  command <<<
    pbsv
  >>>
  output {
    File out_stdout = stdout()
  }
}