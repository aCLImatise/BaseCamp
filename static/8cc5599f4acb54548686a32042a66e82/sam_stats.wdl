version 1.0

task Samstats {
  input {
    Boolean? keep_track_multiple
    String? output_prefix_see
    Int? coveragerna_output_coverage
    Boolean? report_chr_sigs
    Int? number_reads_sample
    Int? size_of_asciisignature
    File? file_extension_handling
    Boolean? only_overwrite_requires
    Boolean? input_bam_bother
    Boolean? fail_when_entries
    String reads
    String phred
    String b_size
    String forward
    String reverse
  }
  command <<<
    sam_stats \
      ~{reads} \
      ~{phred} \
      ~{b_size} \
      ~{forward} \
      ~{reverse} \
      ~{if (keep_track_multiple) then "-D" else ""} \
      ~{if defined(output_prefix_see) then ("-O " +  '"' + output_prefix_see + '"') else ""} \
      ~{if defined(coveragerna_output_coverage) then ("-R " +  '"' + coveragerna_output_coverage + '"') else ""} \
      ~{if (report_chr_sigs) then "-A" else ""} \
      ~{if defined(number_reads_sample) then ("-b " +  '"' + number_reads_sample + '"') else ""} \
      ~{if defined(size_of_asciisignature) then ("-S " +  '"' + size_of_asciisignature + '"') else ""} \
      ~{if defined(file_extension_handling) then ("-x " +  '"' + file_extension_handling + '"') else ""} \
      ~{if (only_overwrite_requires) then "-M" else ""} \
      ~{if (input_bam_bother) then "-B" else ""} \
      ~{if (fail_when_entries) then "-z" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    keep_track_multiple: "Keep track of multiple alignments"
    output_prefix_see: "Output prefix enabling extended output (see below)"
    coveragerna_output_coverage: "Coverage/RNA output (coverage, 3' bias, etc, implies -A)"
    report_chr_sigs: "Report all chr sigs, even if there are more than 1000"
    number_reads_sample: "Number of reads to sample for per-base stats (1M)"
    size_of_asciisignature: "Size of ascii-signature (30)"
    file_extension_handling: "File extension for handling multiple files (stats)"
    only_overwrite_requires: "Only overwrite if newer (requires -x, or multiple files)"
    input_bam_bother: "Input is bam, don't bother looking at magic"
    fail_when_entries: "Don't fail when zero entries in sam"
    reads: ": # of entries in the sam file, might not be # reads"
    phred: ": phred scale used"
    b_size: ": # reads used for qual stats"
    forward: ": number of forward-aligned reads"
    reverse: ": number of reverse-aligned reads"
  }
  output {
    File out_stdout = stdout()
  }
}