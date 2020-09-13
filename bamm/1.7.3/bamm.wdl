version 1.0

task Bamm {
  command <<<
    bamm
  >>>
  output {
    File out_stdout = stdout()
  }
}