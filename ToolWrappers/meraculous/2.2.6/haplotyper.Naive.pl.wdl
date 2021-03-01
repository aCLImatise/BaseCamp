version 1.0

task HaplotyperNaivepl {
  command <<<
    haplotyper_Naive_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}