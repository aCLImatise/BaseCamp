version 1.0

task Obrotamer {
  command <<<
    obrotamer
  >>>
  output {
    File out_stdout = stdout()
  }
}