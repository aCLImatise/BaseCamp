version 1.0

task Cgat {
  command <<<
    cgat
  >>>
  output {
    File out_stdout = stdout()
  }
}