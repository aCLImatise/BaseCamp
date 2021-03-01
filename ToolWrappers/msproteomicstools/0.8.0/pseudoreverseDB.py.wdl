version 1.0

task PseudoreverseDBpy {
  input {
    Boolean? inputfasta_input_fasta
    File? outputfasta_output_file
  }
  command <<<
    pseudoreverseDB_py \
      ~{if (inputfasta_input_fasta) then "-i" else ""} \
      ~{if (outputfasta_output_file) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    inputfasta_input_fasta: "input.fasta input fasta file"
    outputfasta_output_file: "output.fasta output file with decoys"
  }
  output {
    File out_stdout = stdout()
    File out_outputfasta_output_file = "${in_outputfasta_output_file}"
  }
}