version 1.0

task IntroduceErrorsFastaFilepl {
  command <<<
    introduce_errors_fasta_file_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}