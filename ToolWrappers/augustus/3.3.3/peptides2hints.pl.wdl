version 1.0

task Peptides2hintspl {
  command <<<
    peptides2hints_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}