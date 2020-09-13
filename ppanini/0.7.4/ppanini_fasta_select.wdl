version 1.0

task PpaniniFastaSelect {
  command <<<
    ppanini_fasta_select
  >>>
  output {
    File out_stdout = stdout()
  }
}