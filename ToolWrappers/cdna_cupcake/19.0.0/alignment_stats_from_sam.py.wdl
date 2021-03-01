version 1.0

task AlignmentStatsFromSampy {
  input {
    String? input_fasta_fastq
    File? sam_filename
    File? genome_filename
    String? output_prefix
    String? gff
  }
  command <<<
    alignment_stats_from_sam_py \
      ~{if defined(input_fasta_fastq) then ("--input " +  '"' + input_fasta_fastq + '"') else ""} \
      ~{if defined(sam_filename) then ("--sam_filename " +  '"' + sam_filename + '"') else ""} \
      ~{if defined(genome_filename) then ("--genome_filename " +  '"' + genome_filename + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
  }
  parameter_meta {
    input_fasta_fastq: "Input fasta or fastq."
    sam_filename: "Aligned SAM filename."
    genome_filename: "Genome fasta."
    output_prefix: "Output prefix."
    gff: "Annotation GFF (optional)."
  }
  output {
    File out_stdout = stdout()
  }
}