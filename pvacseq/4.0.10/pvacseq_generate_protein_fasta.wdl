version 1.0

task PvacseqGenerateProteinFasta {
  input {
    String? downstream_sequence_length
    String input_file
    String peptide_sequence_length
    String output_file
  }
  command <<<
    pvacseq generate_protein_fasta \
      ~{input_file} \
      ~{peptide_sequence_length} \
      ~{output_file} \
      ~{if defined(downstream_sequence_length) then ("--downstream-sequence-length " +  '"' + downstream_sequence_length + '"') else ""}
  >>>
  parameter_meta {
    downstream_sequence_length: "Cap to limit the downstream sequence length for frameshifts when creating the fasta file. Use 'full' to include the full downstream sequence. Default: 1000"
    input_file: "A VEP-annotated single-sample VCF containing transcript, Wildtype protein sequence, and Downstream protein sequence information"
    peptide_sequence_length: "Length of the peptide sequence to use when creating the FASTA."
    output_file: "The output fasta file"
  }
}