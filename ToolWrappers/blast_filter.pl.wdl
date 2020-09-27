version 1.0

task BlastFilterpl {
  command <<<
    blast_filter_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}