version 1.0

task Pyadam {
  command <<<
    pyadam
  >>>
  output {
    File out_stdout = stdout()
  }
}