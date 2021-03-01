version 1.0

task MmPbsapl {
  command <<<
    mm_pbsa_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}