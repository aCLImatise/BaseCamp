version 1.0

task Osubsamplefastafile {
  input {
    File fasta_file_subsample
    Int integer
    File file_output_file
  }
  command <<<
    o_subsample_fasta_file \
      ~{fasta_file_subsample} \
      ~{integer} \
      ~{file_output_file}
  >>>
  parameter_meta {
    fasta_file_subsample: "FASTA file to subsample"
    integer: "Number of random reads to keep for each sample in the new FASTA"
    file_output_file: "FILE        Output file name"
  }
  output {
    File out_stdout = stdout()
  }
}