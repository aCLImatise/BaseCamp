version 1.0

task Spankijunc {
  input {
    String? bam_file_name
    String? reference_gtf
    String? what_method_run
    String? fasta_file_must
    String? filter
    String? output_directory_default
    String? size_examine_repeats
    String? o_hang
  }
  command <<<
    spankijunc \
      ~{if defined(bam_file_name) then ("-i " +  '"' + bam_file_name + '"') else ""} \
      ~{if defined(reference_gtf) then ("-g " +  '"' + reference_gtf + '"') else ""} \
      ~{if defined(what_method_run) then ("-m " +  '"' + what_method_run + '"') else ""} \
      ~{if defined(fasta_file_must) then ("-f " +  '"' + fasta_file_must + '"') else ""} \
      ~{if defined(filter) then ("-filter " +  '"' + filter + '"') else ""} \
      ~{if defined(output_directory_default) then ("-o " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(size_examine_repeats) then ("-r " +  '"' + size_examine_repeats + '"') else ""} \
      ~{if defined(o_hang) then ("-ohang " +  '"' + o_hang + '"') else ""}
  >>>
  parameter_meta {
    bam_file_name: "BAM file name"
    reference_gtf: "Reference GTF"
    what_method_run: "What method to run: 'eval'  - Evaluates alignments, does not calculate IRT 'quant' - Quantifies coverage and IRT, but not entropy and MMES 'all'   - Performs all analyses (default)"
    fasta_file_must: "Fasta file Must have same chromosomes as BAM and GTF"
    filter: "Filter junctions (T/F) T - Do not report unannotated junctions with ambiguous gene assignment or high exon-intron similarity F - Report all junctions (default)"
    output_directory_default: "Output directory, default='junctions_out'"
    size_examine_repeats: "Size to examine for repeats (number of bases)"
    o_hang: "Overhang applied to junction filtering and intron retention analysis (number of bases)"
  }
}