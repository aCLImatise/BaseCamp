version 1.0

task Xmlindent {
  command <<<
    xmlindent
  >>>
  output {
    File out_stdout = stdout()
  }
}