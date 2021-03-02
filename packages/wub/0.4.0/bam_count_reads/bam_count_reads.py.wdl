version 1.0

task BamCountReadspy {
  input {
    Int? minimum_mapping_quality
    String? input_format_bam
    Int? reference_fasta_gc
    Int? include_word_frequencies
    Boolean? include_mean_mapped
    File? save_pickled_results
    File? save_results_tsv
    Boolean? quiet_print_false
    Boolean? count_reads_read
    Int? yield_counts_mapped
  }
  command <<<
    bam_count_reads_py \
      ~{if defined(minimum_mapping_quality) then ("-a " +  '"' + minimum_mapping_quality + '"') else ""} \
      ~{if defined(input_format_bam) then ("-f " +  '"' + input_format_bam + '"') else ""} \
      ~{if defined(reference_fasta_gc) then ("-z " +  '"' + reference_fasta_gc + '"') else ""} \
      ~{if defined(include_word_frequencies) then ("-k " +  '"' + include_word_frequencies + '"') else ""} \
      ~{if (include_mean_mapped) then "-g" else ""} \
      ~{if defined(save_pickled_results) then ("-p " +  '"' + save_pickled_results + '"') else ""} \
      ~{if defined(save_results_tsv) then ("-t " +  '"' + save_results_tsv + '"') else ""} \
      ~{if (quiet_print_false) then "-Q" else ""} \
      ~{if (count_reads_read) then "-R" else ""} \
      ~{if defined(yield_counts_mapped) then ("-F " +  '"' + yield_counts_mapped + '"') else ""}
  >>>
  parameter_meta {
    minimum_mapping_quality: "Minimum mapping quality (0)."
    input_format_bam: "Input format (BAM)."
    reference_fasta_gc: "Reference fasta. GC content and length columns are added\\nif present (None)."
    include_word_frequencies: "Include word frequencies of specifed length in output\\n(None)."
    include_mean_mapped: "Include mean GC content of reads mapped to each reference\\n(False)."
    save_pickled_results: "Save pickled results in this file (None)."
    save_results_tsv: "Save results in tsv format in this file\\n(bam_count_reads.tsv)."
    quiet_print_false: "Be quiet and do not print progress bar (False)."
    count_reads_read: "Count reads from SAM stream in stdin. Only read count\\nfields are written. Header required! (False)."
    yield_counts_mapped: "Yield counts after every -Fth mapped record when doing\\nonline counting (100).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}