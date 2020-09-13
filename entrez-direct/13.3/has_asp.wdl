version 1.0

task Hasasp {
  command <<<
    has_asp
  >>>
  output {
    File out_stdout = stdout()
  }
}