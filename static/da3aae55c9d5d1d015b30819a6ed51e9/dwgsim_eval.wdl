version 1.0

task DwgsimEval {
  input {
    Boolean? int_split_mapping
    Boolean? alignments_bwa_solid
    Boolean? color_space_alignments
    Boolean? int_divide_score
    Boolean? gap_
    Boolean? consecutive_alignments_end
    Boolean? int_number_raw
    Boolean? int_consider_this
    Boolean? input_contains_end
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
      ~{if (int_split_mapping) then "-a" else ""} \
      ~{if (alignments_bwa_solid) then "-b" else ""} \
      ~{if (color_space_alignments) then "-c" else ""} \
      ~{if (int_divide_score) then "-d" else ""} \
      ~{if (gap_) then "-g" else ""} \
      ~{if (consecutive_alignments_end) then "-m" else ""} \
      ~{if (int_number_raw) then "-n" else ""} \
      ~{if (int_consider_this) then "-q" else ""} \
      ~{if (input_contains_end) then "-z" else ""} \
      ~{if (input_is_sam) then "-S" else ""} \
      ~{if (print_incorrect_alignments) then "-p" else ""} \
      ~{if (the_specified_snps) then "-s" else ""} \
      ~{if (the_specified_errors) then "-e" else ""} \
      ~{if (consider_only_alignments) then "-i" else ""} \
      ~{if (string_read_prefix) then "-P" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    int_split_mapping: "INT     split by [0]:\\n0: by mapping quality\\n1: by alignment score\\n2: by suboptimal alignment score\\n3: by alignment score - suboptimal alignment score"
    alignments_bwa_solid: "alignments are from BWA (SOLiD only) [False]"
    color_space_alignments: "color space alignments [False]"
    int_divide_score: "INT     divide quality/alignment score by this factor [1]"
    gap_: "gap \\\"wiggle\\\" [5]"
    consecutive_alignments_end: "consecutive alignments with the same name (and end for multi-ends) should be treated as multi-mapped reads [False]"
    int_number_raw: "INT     number of raw input paired-end reads (otherwise, inferred from all SAM records present) [0]"
    int_consider_this: "INT     consider only alignments with this mapping quality or greater [0]"
    input_contains_end: "input contains only single end reads [False]"
    input_is_sam: "input is SAM [False]"
    print_incorrect_alignments: "print incorrect alignments [False]"
    the_specified_snps: "INT     consider only alignments with the number of specified SNPs [-1]"
    the_specified_errors: "INT     consider only alignments with the number of specified errors [-1]"
    consider_only_alignments: "consider only alignments with indels [False]"
    string_read_prefix: "STRING  a read prefix that was prepended to each read name [not using]"
    in_dots_am_slash_in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}