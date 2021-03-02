version 1.0

task PvacseqGenerateProteinFasta {
  input {
    Int? downstream_sequence_length
    String positional_arguments
    String input_file
    String peptide_sequence_length
    String output_fasta_file
  }
  command <<<
    pvacseq generate_protein_fasta \
      ~{positional_arguments} \
      ~{input_file} \
      ~{peptide_sequence_length} \
      ~{output_fasta_file} \
      ~{if defined(downstream_sequence_length) then ("--downstream-sequence-length " +  '"' + downstream_sequence_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    downstream_sequence_length: "Cap to limit the downstream sequence length for\\nframeshifts when creating the fasta file. Use 'full'\\nto include the full downstream sequence. Default: 1000\\n"
    positional_arguments: "positional arguments:"
    input_file: "A VEP-annotated single-sample VCF containing\\ntranscript, Wildtype protein sequence, and Downstream\\nprotein sequence information"
    peptide_sequence_length: "Length of the peptide sequence to use when creating\\nthe FASTA."
    output_fasta_file: "The output fasta file"
  }
  output {
    File out_stdout = stdout()
  }
}