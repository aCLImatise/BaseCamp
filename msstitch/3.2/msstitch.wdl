version 1.0

task Msstitch {
  command <<<
    msstitch
  >>>
  output {
    File out_stdout = stdout()
  }
}