version 1.0

task Obmm {
  command <<<
    obmm
  >>>
  output {
    File out_stdout = stdout()
  }
}