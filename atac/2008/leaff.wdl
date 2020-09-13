version 1.0

task Leaff {
  command <<<
    leaff
  >>>
  output {
    File out_stdout = stdout()
  }
}