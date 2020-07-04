version 1.0

task RsemGff3ToGtf {
  input {
    Boolean? make_genes_as_transcripts
    String? rna_patterns
    String? extract_sequences
    String input_gff_three_file
    String output_gtf_file
  }
  command <<<
    rsem-gff3-to-gtf \
      ~{input_gff_three_file} \
      ~{output_gtf_file} \
      ~{true="--make-genes-as-transcripts" false="" make_genes_as_transcripts} \
      ~{if defined(rna_patterns) then ("--RNA-patterns " +  '"' + rna_patterns + '"') else ""} \
      ~{if defined(extract_sequences) then ("--extract-sequences " +  '"' + extract_sequences + '"') else ""}
  >>>
  parameter_meta {
    make_genes_as_transcripts: "GFF3 file does not contain transcripts, make each gene as a transcript. (default: False)"
    rna_patterns: "Types of RNAs to be extracted, e.g. mRNA,rRNA (default: None)"
    extract_sequences: "If GFF3 file contains reference sequences, extract them to the specified file (default: None)"
    input_gff_three_file: "Input GFF3 file."
    output_gtf_file: "Output GTF file."
  }
}