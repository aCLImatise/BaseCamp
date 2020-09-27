version 1.0

task FilterGridSeeds {
  input {
    Boolean? string_fasta_file
  }
  command <<<
    FilterGridSeeds \
      ~{if (string_fasta_file) then "-t" else ""}
  >>>
  parameter_meta {
    string_fasta_file: "<string> : target fasta file"
  }
  output {
    File out_stdout = stdout()
  }
}