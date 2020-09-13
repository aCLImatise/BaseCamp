version 1.0

task Variant {
  input {
    Boolean? verbose
    Boolean? no_output
    Boolean? rules
    Boolean? proc_regions_file
    Boolean? mark_as_qc_fail
    File? output_file_write
    File? cram
    Boolean? bam
    Boolean? reference
    Boolean? strip_tags
    Boolean? strip_all_tags
    Boolean? write_trimmed
    File? qc_file
    File? max_coverage
    Boolean? min_phred
    Boolean? region
    Boolean? exclude_region
    Boolean? linked_region
    Boolean? linked_exclude_region
    Boolean? region_pad
    Boolean? min_clip
    Boolean? max_n_bases
    Boolean? min_mapq
    Boolean? min_del
    Boolean? min_ins
    Boolean? min_length
    Boolean? motif
    Boolean? read_group
    Boolean? include_aln_flag
    Boolean? exclude_aln_flag
    String input_dot_bam
  }
  command <<<
    variant \
      ~{input_dot_bam} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_output) then "--no-output" else ""} \
      ~{if (rules) then "--rules" else ""} \
      ~{if (proc_regions_file) then "--proc-regions-file" else ""} \
      ~{if (mark_as_qc_fail) then "--mark-as-qc-fail" else ""} \
      ~{if (output_file_write) then "--output" else ""} \
      ~{if (cram) then "--cram" else ""} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (reference) then "--reference" else ""} \
      ~{if (strip_tags) then "--strip-tags" else ""} \
      ~{if (strip_all_tags) then "--strip-all-tags" else ""} \
      ~{if (write_trimmed) then "--write-trimmed" else ""} \
      ~{if (qc_file) then "--qc-file" else ""} \
      ~{if (max_coverage) then "--max-coverage" else ""} \
      ~{if (min_phred) then "--min-phred" else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (exclude_region) then "--exclude-region" else ""} \
      ~{if (linked_region) then "--linked-region" else ""} \
      ~{if (linked_exclude_region) then "--linked-exclude-region" else ""} \
      ~{if (region_pad) then "--region-pad" else ""} \
      ~{if (min_clip) then "--min-clip" else ""} \
      ~{if (max_n_bases) then "--max-nbases" else ""} \
      ~{if (min_mapq) then "--min-mapq" else ""} \
      ~{if (min_del) then "--min-del" else ""} \
      ~{if (min_ins) then "--min-ins" else ""} \
      ~{if (min_length) then "--min-length" else ""} \
      ~{if (motif) then "--motif" else ""} \
      ~{if (read_group) then "--read-group" else ""} \
      ~{if (include_aln_flag) then "--include-aln-flag" else ""} \
      ~{if (exclude_aln_flag) then "--exclude-aln-flag" else ""}
  >>>
  parameter_meta {
    verbose: "Verbose output"
    no_output: "Don't output reads (used for profiling with -q)"
    rules: "JSON ecript for the rules."
    proc_regions_file: "Samtools-style region string (e.g. 1:1,000-2,000) or BED/VCF of regions to process. -k UN iterates over unmapped-unmapped reads"
    mark_as_qc_fail: "Flag reads that don't pass VariantBam with the failed QC flag, rather than deleting the read."
    output_file_write: "Output file to write to (BAM/SAM/CRAM) file instead of stdout"
    cram: "Output file should be in CRAM format"
    bam: "Output should be in binary BAM format"
    reference: "Path to reference. Required for reading/writing CRAM"
    strip_tags: "Remove the specified tags, separated by commas. eg. -s RG,MD"
    strip_all_tags: "Remove all alignment tags"
    write_trimmed: "Output the base-quality trimmed sequence rather than the original sequence. Also removes quality scores"
    qc_file: "Output a qc file that contains information about BAM"
    max_coverage: "Maximum coverage of output file. BAM must be sorted. Negative values enforce a minimum coverage"
    min_phred: "Set the minimum base quality score considered to be high-quality"
    region: "Regions (e.g. myvcf.vcf or WG for whole genome) or newline seperated subsequence file."
    exclude_region: "Same as -g, but for region where satisfying a rule EXCLUDES this read."
    linked_region: "Same as -g, but turns on mate-linking"
    linked_exclude_region: "Same as -l, but for mate-linked region where satisfying this rule EXCLUDES this read."
    region_pad: "Apply a padding to each region supplied with the region flags (specify after region flag)"
    min_clip: "Minimum number of quality clipped bases"
    max_n_bases: "Maximum number of N bases"
    min_mapq: "Minimum mapping quality"
    min_del: "Minimum number of deleted bases"
    min_ins: "Minimum number of inserted bases"
    min_length: "Minimum read length (after base-quality trimming)"
    motif: "Motif file"
    read_group: "Limit to just a single read group"
    include_aln_flag: "Flags to include (like samtools -f)"
    exclude_aln_flag: "Flags to exclude (like samtools -F)"
    input_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_write = "${in_output_file_write}"
    File out_cram = "${in_cram}"
    File out_qc_file = "${in_qc_file}"
    File out_max_coverage = "${in_max_coverage}"
  }
}