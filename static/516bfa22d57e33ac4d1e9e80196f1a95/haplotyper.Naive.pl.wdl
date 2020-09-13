version 1.0

task HaplotyperNaivepl {
  command <<<
    haplotyper_Naive_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}