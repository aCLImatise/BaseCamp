version 1.0

task Obrotate {
  command <<<
    obrotate
  >>>
  output {
    File out_stdout = stdout()
  }
}