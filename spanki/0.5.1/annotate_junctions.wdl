version 1.0

task AnnotateJunctions {
  input {
    String? j_list
    String? j_tab
    String? reference_gtf_default
    String? fasta_file_must
    String? output_directory_default
    String? flanking_intron_sequence
    String? size_examine_repeats
    String? verbose_detailed_analysis
  }
  command <<<
    annotate_junctions \
      ~{if defined(j_list) then ("-jlist " +  '"' + j_list + '"') else ""} \
      ~{if defined(j_tab) then ("-jtab " +  '"' + j_tab + '"') else ""} \
      ~{if defined(reference_gtf_default) then ("-g " +  '"' + reference_gtf_default + '"') else ""} \
      ~{if defined(fasta_file_must) then ("-f " +  '"' + fasta_file_must + '"') else ""} \
      ~{if defined(output_directory_default) then ("-o " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(flanking_intron_sequence) then ("-s " +  '"' + flanking_intron_sequence + '"') else ""} \
      ~{if defined(size_examine_repeats) then ("-r " +  '"' + size_examine_repeats + '"') else ""} \
      ~{if defined(verbose_detailed_analysis) then ("-v " +  '"' + verbose_detailed_analysis + '"') else ""}
  >>>
  parameter_meta {
    j_list: "junctionlist (default: None)"
    j_tab: "junctiontab (default: None)"
    reference_gtf_default: "Reference GTF (default: None)"
    fasta_file_must: "Fasta file Must have same chromosomes as BAM and GTF (default: None)"
    output_directory_default: "Output directory, default='junctions_out' (default: ./junctions_out/)"
    flanking_intron_sequence: "Flanking intron sequence (number of bases) (default: 20)"
    size_examine_repeats: "Size to examine for repeats (number of bases) (default: 10)"
    verbose_detailed_analysis: "Verbose, detailed analysis (T/F) (default: T)"
  }
}