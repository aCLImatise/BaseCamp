version 1.0

task EraseAnnoyingSequencespy {
  input {
    File? input_fasta_file
    File? output_fasta_file
  }
  command <<<
    erase_annoying_sequences_py \
      ~{if defined(input_fasta_file) then ("--input " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(output_fasta_file) then ("--output " +  '"' + output_fasta_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fasta_file: "Input FASTA file"
    output_fasta_file: "Output FASTA file of negative sequences"
  }
  output {
    File out_stdout = stdout()
    File out_output_fasta_file = "${in_output_fasta_file}"
  }
}