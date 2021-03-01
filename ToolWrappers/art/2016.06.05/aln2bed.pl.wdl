version 1.0

task Aln2bedpl {
  command <<<
    aln2bed_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}