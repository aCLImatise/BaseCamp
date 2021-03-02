version 1.0

task YaraMapper {
  input {
    Boolean? version_check
    Boolean? verbose
    Boolean? very_verbose
    File? output_file
    File? output_format
    File? read_group
    String? secondary_matches
    Boolean? align_secondary
    Boolean? rabe_ma_alignments
    Int? error_rate
    Int? strata_rate
    Int? strata_count
    String? sensitivity
    Int? library_length
    Int? library_deviation
    Int? in_del_rate
    Boolean? no_indels
    Int? threads
  }
  command <<<
    yara_mapper \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (very_verbose) then "--very-verbose" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(read_group) then ("--read-group " +  '"' + read_group + '"') else ""} \
      ~{if defined(secondary_matches) then ("--secondary-matches " +  '"' + secondary_matches + '"') else ""} \
      ~{if (align_secondary) then "--align-secondary" else ""} \
      ~{if (rabe_ma_alignments) then "--rabema-alignments" else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(strata_rate) then ("--strata-rate " +  '"' + strata_rate + '"') else ""} \
      ~{if defined(strata_count) then ("--strata-count " +  '"' + strata_count + '"') else ""} \
      ~{if defined(sensitivity) then ("--sensitivity " +  '"' + sensitivity + '"') else ""} \
      ~{if defined(library_length) then ("--library-length " +  '"' + library_length + '"') else ""} \
      ~{if defined(library_deviation) then ("--library-deviation " +  '"' + library_deviation + '"') else ""} \
      ~{if defined(in_del_rate) then ("--indel-rate " +  '"' + in_del_rate + '"') else ""} \
      ~{if (no_indels) then "--no-indels" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the\\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\\nDefault: 1."
    verbose: "Displays global statistics."
    very_verbose: "Displays extensive statistics for each batch of reads."
    output_file: "Specify an output file. Default: write the file to standard output.\\nValid filetypes are: .sam[.*] and .bam, where * is any of the\\nfollowing extensions: gz, bz2, and bgzf for transparent\\n(de)compression."
    output_format: "Specify an output format. Note: when specifying the option\\n--output-file, the output format is taken from the filename\\nextension. One of bam, sam, sam.bgzf, sam.gz, and sam.bz2. Default:\\nsam."
    read_group: "Specify a read group for all records in the SAM/BAM file. Default:\\nnone."
    secondary_matches: "Specify whether to output secondary matches in the XA tag of the\\nprimary alignment, as separate secondary records, or to omit them.\\nOne of tag, record, and omit. Default: tag."
    align_secondary: "Compute and output co- and suboptimal match alignments. Ignored if\\n'-sa omit' is set."
    rabe_ma_alignments: "Output alignments compatible with the Read Alignment BEnchMArk\\n(RABEMA)."
    error_rate: "Consider alignments within this percentual number of errors.\\nIncrease this threshold to increase the number of mapped reads.\\nDecrease this threshold to decrease the runtime. In range [0..10].\\nDefault: 5."
    strata_rate: "Consider suboptimal alignments within this percentual number of\\nerrors from the optimal alignment. Increase this threshold to\\nincrease the number of alternative alignments at the expense of\\nruntime. In range [0..10]. Default: 0."
    strata_count: "Consider suboptimal alignments within this absolute number of errors\\nfrom the optimal alignment. Increase this threshold to increase the\\nnumber of alternative alignments at the expense of runtime. In range\\n[0..127]. Default: 0."
    sensitivity: "Sensitivity with respect to edit distance. Full sensitivity\\nguarantees to find all considered alignments but increases runtime,\\nlow sensitivity decreases runtime by breaking such guarantee. One of\\nlow, high, and full. Default: high."
    library_length: "Expected library length. Default: autodetected. In range [1..inf]."
    library_deviation: "Deviation from the expected library length. Default: autodetected.\\nIn range [1..inf]."
    in_del_rate: "Rescue unaligned ends within this percentual number of indels. In\\nrange [0..50]. Default: 25."
    no_indels: "Turn off the rescue of unaligned ends containing indels."
    threads: "Specify the number of threads to use. In range [1..2048]. Default:\\n8."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_output_format = "${in_output_format}"
  }
}