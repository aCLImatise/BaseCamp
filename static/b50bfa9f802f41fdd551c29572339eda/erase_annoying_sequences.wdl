version 1.0

task EraseAnnoyingSequences.py {
  input {
    String? input_fasta_file
    String? output_fasta_file
  }
  command <<<
    erase_annoying_sequences.py \
      ~{if defined(input_fasta_file) then ("--input " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(output_fasta_file) then ("--output " +  '"' + output_fasta_file + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "Input FASTA file"
    output_fasta_file: "Output FASTA file of negative sequences"
  }
}