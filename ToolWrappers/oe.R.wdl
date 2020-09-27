version 1.0

task OeR {
  command <<<
    oe_R
  >>>
  output {
    File out_stdout = stdout()
  }
}