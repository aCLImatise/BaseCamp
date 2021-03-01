version 1.0

task FlyesamtoolsDepth {
  input {
    String? list_positions_regions
    String? list_input_bam
    Int? read_threshold_ignore
    Int? maximum_coverage_depth
    Int? base_quality_threshold
    Int? mapping_quality_threshold
    Boolean? chrfromto__region
    File? input_fmt_option
    File? reference
    String sam_tools
    String depth
    Int in_one_dot_bam
  }
  command <<<
    flye_samtools depth \
      ~{sam_tools} \
      ~{depth} \
      ~{in_one_dot_bam} \
      ~{if defined(list_positions_regions) then ("-b " +  '"' + list_positions_regions + '"') else ""} \
      ~{if defined(list_input_bam) then ("-f " +  '"' + list_input_bam + '"') else ""} \
      ~{if defined(read_threshold_ignore) then ("-l " +  '"' + read_threshold_ignore + '"') else ""} \
      ~{if defined(maximum_coverage_depth) then ("-d " +  '"' + maximum_coverage_depth + '"') else ""} \
      ~{if defined(base_quality_threshold) then ("-q " +  '"' + base_quality_threshold + '"') else ""} \
      ~{if defined(mapping_quality_threshold) then ("-Q " +  '"' + mapping_quality_threshold + '"') else ""} \
      ~{if (chrfromto__region) then "-r" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_positions_regions: "list of positions or regions"
    list_input_bam: "list of input BAM filenames, one per line [null]"
    read_threshold_ignore: "read length threshold (ignore reads shorter than <int>) [0]"
    maximum_coverage_depth: "maximum coverage depth [8000]. If 0, depth is set to the maximum\\ninteger value, effectively removing any depth limit."
    base_quality_threshold: "base quality threshold [0]"
    mapping_quality_threshold: "mapping quality threshold [0]"
    chrfromto__region: "<chr:from-to>    region"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    sam_tools: ""
    depth: ""
    in_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}