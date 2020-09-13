version 1.0

task Masterhtml {
  command <<<
    master_html
  >>>
  output {
    File out_stdout = stdout()
  }
}