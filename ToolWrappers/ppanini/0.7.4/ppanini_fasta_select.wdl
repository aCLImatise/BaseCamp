version 1.0

task PpaniniFastaSelect {
  command <<<
    ppanini_fasta_select
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}