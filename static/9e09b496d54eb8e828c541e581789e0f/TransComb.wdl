version 1.0

task TransComb {
  input {
    File? bam_file_produced
    Int? strandspecific_rnaseq_reads
    File? output_pathfile_name
    Int? minimum_expression_level
    Int? minimum_assembled_transcript
    Float? minimum_junction_coverage
    Float? minimum_farction_unbalanced
    Int? minimum_gene_length
    Boolean? disable_trimming_predicted
    Int? minimum_gap_length
    Int? minimum_seed_coverage
    Int? minimum_anchor_length
    Int? fraction_exon_allowed
    Boolean? report_current_version
  }
  command <<<
    TransComb \
      ~{if defined(bam_file_produced) then ("-b " +  '"' + bam_file_produced + '"') else ""} \
      ~{if defined(strandspecific_rnaseq_reads) then ("-s " +  '"' + strandspecific_rnaseq_reads + '"') else ""} \
      ~{if defined(output_pathfile_name) then ("-o " +  '"' + output_pathfile_name + '"') else ""} \
      ~{if defined(minimum_expression_level) then ("-f " +  '"' + minimum_expression_level + '"') else ""} \
      ~{if defined(minimum_assembled_transcript) then ("-l " +  '"' + minimum_assembled_transcript + '"') else ""} \
      ~{if defined(minimum_junction_coverage) then ("-d " +  '"' + minimum_junction_coverage + '"') else ""} \
      ~{if defined(minimum_farction_unbalanced) then ("-D " +  '"' + minimum_farction_unbalanced + '"') else ""} \
      ~{if defined(minimum_gene_length) then ("-g " +  '"' + minimum_gene_length + '"') else ""} \
      ~{if (disable_trimming_predicted) then "-t" else ""} \
      ~{if defined(minimum_gap_length) then ("-e " +  '"' + minimum_gap_length + '"') else ""} \
      ~{if defined(minimum_seed_coverage) then ("-F " +  '"' + minimum_seed_coverage + '"') else ""} \
      ~{if defined(minimum_anchor_length) then ("-a " +  '"' + minimum_anchor_length + '"') else ""} \
      ~{if defined(fraction_exon_allowed) then ("-m " +  '"' + fraction_exon_allowed + '"') else ""} \
      ~{if (report_current_version) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam_file_produced: ": BAM file produced by Tophat or Tophat2."
    strandspecific_rnaseq_reads: ": Strand-specific RNA-Seq reads orientation.\\n1) Use <unstranded> to indicate RNA-seq reads are non-strand-specific.\\n2) Use <first> to indicate fr-first-stranded RNA-seq reads.\\n3) Use <second> to indicate fr-second-stranded RNA-seq reads."
    output_pathfile_name: ": Output path/file name of the assembled transcripts GTF, default: ./TransComb.gtf"
    minimum_expression_level: ": Minimum expression level estimated by abundance analysis for output, default: 0."
    minimum_assembled_transcript: ": Minimum assembled transcript length, default: 500."
    minimum_junction_coverage: ": Minimum junction coverage fraction by maximum junction coverage, default: 0.02."
    minimum_farction_unbalanced: ": Minimum farction of unbalanced junction, default: 0.1."
    minimum_gene_length: ": Minimum  gene length, default: 200."
    disable_trimming_predicted: ": Disable trimming of predicted transcripts based on coverage, default: coverage trimming is enabled."
    minimum_gap_length: ": Minimum gap length between two exons, default: 200."
    minimum_seed_coverage: ": Minimum seed coverage used for generate a new transcript, default: 0."
    minimum_anchor_length: ": Minimum anchor length for junctions, default: 1."
    fraction_exon_allowed: ": Fraction of exon allowed to be covered by multi-hit reads, default: 1."
    report_current_version: ": Report the current version of TransComb and exit."
  }
  output {
    File out_stdout = stdout()
    File out_output_pathfile_name = "${in_output_pathfile_name}"
  }
}