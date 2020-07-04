version 1.0

task Variant {
  input {
    Boolean? verbose
    Boolean? no_output
    Boolean? rules
    Boolean? proc_regions_file
    Boolean? mark_as_qc_fail
    Boolean? output_file_write
    Boolean? cram
    Boolean? bam
    Boolean? reference
    Boolean? strip_tags
    Boolean? strip_all_tags
    Boolean? write_trimmed
    Boolean? qc_file
    Boolean? max_coverage
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
      ~{true="--verbose" false="" verbose} \
      ~{true="--no-output" false="" no_output} \
      ~{true="--rules" false="" rules} \
      ~{true="--proc-regions-file" false="" proc_regions_file} \
      ~{true="--mark-as-qc-fail" false="" mark_as_qc_fail} \
      ~{true="--output" false="" output_file_write} \
      ~{true="--cram" false="" cram} \
      ~{true="--bam" false="" bam} \
      ~{true="--reference" false="" reference} \
      ~{true="--strip-tags" false="" strip_tags} \
      ~{true="--strip-all-tags" false="" strip_all_tags} \
      ~{true="--write-trimmed" false="" write_trimmed} \
      ~{true="--qc-file" false="" qc_file} \
      ~{true="--max-coverage" false="" max_coverage} \
      ~{true="--min-phred" false="" min_phred} \
      ~{true="--region" false="" region} \
      ~{true="--exclude-region" false="" exclude_region} \
      ~{true="--linked-region" false="" linked_region} \
      ~{true="--linked-exclude-region" false="" linked_exclude_region} \
      ~{true="--region-pad" false="" region_pad} \
      ~{true="--min-clip" false="" min_clip} \
      ~{true="--max-nbases" false="" max_n_bases} \
      ~{true="--min-mapq" false="" min_mapq} \
      ~{true="--min-del" false="" min_del} \
      ~{true="--min-ins" false="" min_ins} \
      ~{true="--min-length" false="" min_length} \
      ~{true="--motif" false="" motif} \
      ~{true="--read-group" false="" read_group} \
      ~{true="--include-aln-flag" false="" include_aln_flag} \
      ~{true="--exclude-aln-flag" false="" exclude_aln_flag}
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
}