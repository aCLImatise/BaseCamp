version 1.0

task Refine {
  command <<<
    refine
  >>>
  output {
    File out_stdout = stdout()
  }
}