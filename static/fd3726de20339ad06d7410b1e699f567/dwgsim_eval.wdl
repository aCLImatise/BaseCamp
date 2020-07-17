version 1.0

task DwgsimEval {
  input {
    Boolean? int_split_mapping
    Boolean? alignments_bwa_solid
    Boolean? color_space_alignments
    Boolean? int_divide_score
    Boolean? gap_
    Boolean? consecutive_alignments_same
    Boolean? int_number_raw
    Boolean? int_consider_this
    Boolean? input_contains_reads
    Boolean? input_is_sam
    Boolean? print_incorrect_alignments
    Boolean? the_specified_snps
    Boolean? the_specified_errors
    Boolean? consider_only_alignments
    Boolean? string_read_prefix
    String in_dots_am_slash_in_dot_bam
  }
  command <<<
    dwgsim_eval \
      ~{in_dots_am_slash_in_dot_bam} \
      ~{true="-a" false="" int_split_mapping} \
      ~{true="-b" false="" alignments_bwa_solid} \
      ~{true="-c" false="" color_space_alignments} \
      ~{true="-d" false="" int_divide_score} \
      ~{true="-g" false="" gap_} \
      ~{true="-m" false="" consecutive_alignments_same} \
      ~{true="-n" false="" int_number_raw} \
      ~{true="-q" false="" int_consider_this} \
      ~{true="-z" false="" input_contains_reads} \
      ~{true="-S" false="" input_is_sam} \
      ~{true="-p" false="" print_incorrect_alignments} \
      ~{true="-s" false="" the_specified_snps} \
      ~{true="-e" false="" the_specified_errors} \
      ~{true="-i" false="" consider_only_alignments} \
      ~{true="-P" false="" string_read_prefix}
  >>>
  parameter_meta {
    int_split_mapping: "INT     split by [0]: 0: by mapping quality 1: by alignment score 2: by suboptimal alignment score 3: by alignment score - suboptimal alignment score"
    alignments_bwa_solid: "alignments are from BWA (SOLiD only) [False]"
    color_space_alignments: "color space alignments [False]"
    int_divide_score: "INT     divide quality/alignment score by this factor [1]"
    gap_: "gap \"wiggle\" [5]"
    consecutive_alignments_same: "consecutive alignments with the same name (and end for multi-ends) should be treated as multi-mapped reads [False]"
    int_number_raw: "INT     number of raw input paired-end reads (otherwise, inferred from all SAM records present) [0]"
    int_consider_this: "INT     consider only alignments with this mapping quality or greater [0]"
    input_contains_reads: "input contains only single end reads [False]"
    input_is_sam: "input is SAM [False]"
    print_incorrect_alignments: "print incorrect alignments [False]"
    the_specified_snps: "INT     consider only alignments with the number of specified SNPs [-1]"
    the_specified_errors: "INT     consider only alignments with the number of specified errors [-1]"
    consider_only_alignments: "consider only alignments with indels [False]"
    string_read_prefix: "STRING  a read prefix that was prepended to each read name [not using]"
    in_dots_am_slash_in_dot_bam: ""
  }
}