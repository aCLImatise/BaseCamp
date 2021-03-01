version 1.0

task BlastFilterpl {
  command <<<
    blast_filter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}