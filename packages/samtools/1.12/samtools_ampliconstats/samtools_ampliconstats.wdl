version 1.0

task SamtoolsAmpliconstats {
  input {
    Int? required_flag
    Int? filter_flag
    Int? max_amplicons
    Int? max_amplicon_length
    Array[Int] min_depth
    Int? pos_margin
    File? specify_output_file
    Boolean? use_sample_name
    Int? tlen_adjust
    Int? t_coord_bin
    Int? t_coord_min_count
    String? depth_bin
    String? input_fmt
    File? input_fmt_option
    File? reference
    Int? threads
    String primers_dot_bed
  }
  command <<<
    samtools ampliconstats \
      ~{primers_dot_bed} \
      ~{if defined(required_flag) then ("--required-flag " +  '"' + required_flag + '"') else ""} \
      ~{if defined(filter_flag) then ("--filter-flag " +  '"' + filter_flag + '"') else ""} \
      ~{if defined(max_amplicons) then ("--max-amplicons " +  '"' + max_amplicons + '"') else ""} \
      ~{if defined(max_amplicon_length) then ("--max-amplicon-length " +  '"' + max_amplicon_length + '"') else ""} \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""} \
      ~{if defined(pos_margin) then ("--pos-margin " +  '"' + pos_margin + '"') else ""} \
      ~{if defined(specify_output_file) then ("--output " +  '"' + specify_output_file + '"') else ""} \
      ~{if (use_sample_name) then "--use-sample-name" else ""} \
      ~{if defined(tlen_adjust) then ("--tlen-adjust " +  '"' + tlen_adjust + '"') else ""} \
      ~{if defined(t_coord_bin) then ("--tcoord-bin " +  '"' + t_coord_bin + '"') else ""} \
      ~{if defined(t_coord_min_count) then ("--tcoord-min-count " +  '"' + t_coord_min_count + '"') else ""} \
      ~{if defined(depth_bin) then ("--depth-bin " +  '"' + depth_bin + '"') else ""} \
      ~{if defined(input_fmt) then ("--input-fmt " +  '"' + input_fmt + '"') else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.12--hd5e65b6_0"
  }
  parameter_meta {
    required_flag: "|INT\\nOnly include reads with all of the FLAGs present [0x0]"
    filter_flag: "|INT\\nOnly include reads with none of the FLAGs present [0xB04]"
    max_amplicons: "Change the maximum number of amplicons permitted [1000]"
    max_amplicon_length: "Change the maximum length of an individual amplicon [1000]"
    min_depth: "...\\nMinimum base depth(s) to consider position covered [1]"
    pos_margin: "Margin of error for matching primer positions [30]"
    specify_output_file: "Specify output file [stdout if unset]"
    use_sample_name: "Use the sample name from the first @RG header line"
    tlen_adjust: "Add/subtract from TLEN; use when clipping but no fixmate step"
    t_coord_bin: "Bin template start,end positions into multiples of INT[1]"
    t_coord_min_count: "Minimum template start,end frequency for recording [10]"
    depth_bin: "Merge FDP values within +/- FRACTION together."
    input_fmt: "[,OPT[=VAL]]...\\nSpecify input format (SAM, BAM, CRAM)"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]\\n"
    primers_dot_bed: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
  }
}