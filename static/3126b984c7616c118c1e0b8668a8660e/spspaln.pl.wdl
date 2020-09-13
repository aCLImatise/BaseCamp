version 1.0

task Spspalnpl {
  command <<<
    spspaln_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}