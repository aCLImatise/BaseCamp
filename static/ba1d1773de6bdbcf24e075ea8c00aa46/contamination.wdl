version 1.0

task Contamination {
  command <<<
    contamination
  >>>
  output {
    File out_stdout = stdout()
  }
}