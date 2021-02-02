version 1.0

task MmPbsapl {
  command <<<
    mm_pbsa_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}