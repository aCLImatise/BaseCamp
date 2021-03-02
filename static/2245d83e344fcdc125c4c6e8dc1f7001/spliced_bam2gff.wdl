version 1.0

task SplicedBam2gff {
  input {
    Directory? write_output_partitioned
    Boolean? input_is_minimap
    Boolean? discard_secondary_alignments
    Boolean? print_out_version
    Int? bundle_together_loci
    Int? classify_deletions_larger
    Boolean? use_strand_tag
    Boolean? use_read_strand
    Int? number_cores_use
  }
  command <<<
    spliced_bam2gff \
      ~{if defined(write_output_partitioned) then ("-L " +  '"' + write_output_partitioned + '"') else ""} \
      ~{if (input_is_minimap) then "-M" else ""} \
      ~{if (discard_secondary_alignments) then "-S" else ""} \
      ~{if (print_out_version) then "-V" else ""} \
      ~{if defined(bundle_together_loci) then ("-b " +  '"' + bundle_together_loci + '"') else ""} \
      ~{if defined(classify_deletions_larger) then ("-d " +  '"' + classify_deletions_larger + '"') else ""} \
      ~{if (use_strand_tag) then "-g" else ""} \
      ~{if (use_read_strand) then "-s" else ""} \
      ~{if defined(number_cores_use) then ("-t " +  '"' + number_cores_use + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spliced_bam2gff:1.3--h375a9b1_0"
  }
  parameter_meta {
    write_output_partitioned: "Write output partitioned into \\\"loci\\\" to this directory. Turns of output to stdout."
    input_is_minimap: "Input is from minimap2."
    discard_secondary_alignments: "Do NOT discard secondary and supplementary alignments."
    print_out_version: "Print out version."
    bundle_together_loci: "Bundle together loci in batches with at least this size. (default -1)"
    classify_deletions_larger: "Classify all deletions larger than this as introns (-1 means off). (default -1)"
    use_strand_tag: "Use strand tag as feature orientation then read strand if not available."
    use_read_strand: "Use read strand (from BAM flag) as feature orientation."
    number_cores_use: "Number of cores to use. (default 8)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_write_output_partitioned = "${in_write_output_partitioned}"
  }
}