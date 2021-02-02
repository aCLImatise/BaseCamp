version 1.0

task Pydoc {
  command <<<
    pydoc
  >>>
  output {
    File out_stdout = stdout()
  }
}