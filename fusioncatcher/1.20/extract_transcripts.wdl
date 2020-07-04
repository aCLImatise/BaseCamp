version 1.0

task ExtractTranscripts.py {
  input {
    String? input_genes
    String? input_transcriptome
    String? output_fasta_file
  }
  command <<<
    extract_transcripts.py \
      ~{if defined(input_genes) then ("--input_genes " +  '"' + input_genes + '"') else ""} \
      ~{if defined(input_transcriptome) then ("--input_transcriptome " +  '"' + input_transcriptome + '"') else ""} \
      ~{if defined(output_fasta_file) then ("--output " +  '"' + output_fasta_file + '"') else ""}
  >>>
  parameter_meta {
    input_genes: "Input file with Ensembl genes ids."
    input_transcriptome: "Input FASTA genome containing the genome sequences."
    output_fasta_file: "The output FASTA file where the genes sequences are written."
  }
}