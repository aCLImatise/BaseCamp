version 1.0

task Refinesh {
  command <<<
    refine_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}