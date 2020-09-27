version 1.0

task ReverseStrandpl {
  command <<<
    ReverseStrand_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}