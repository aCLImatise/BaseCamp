version 1.0

task Deepbinner {
  command <<<
    deepbinner
  >>>
  output {
    File out_stdout = stdout()
  }
}