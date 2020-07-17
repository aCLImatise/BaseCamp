version 1.0

task FlyeSamtoolsDepth {
  input {
    String? list_positions_regions
    String? list_input_bam
    Int? read_ignore_reads
    Int? d_slash_m
    Int? base_quality_threshold
    Int? mapping_quality_threshold
    Boolean? chrfromto_region_opt
    String sam_tools
    String depth
    String in_one_dot_bam
  }
  command <<<
    flye-samtools depth \
      ~{sam_tools} \
      ~{depth} \
      ~{in_one_dot_bam} \
      ~{if defined(list_positions_regions) then ("-b " +  '"' + list_positions_regions + '"') else ""} \
      ~{if defined(list_input_bam) then ("-f " +  '"' + list_input_bam + '"') else ""} \
      ~{if defined(read_ignore_reads) then ("-l " +  '"' + read_ignore_reads + '"') else ""} \
      ~{if defined(d_slash_m) then ("-d/-m " +  '"' + d_slash_m + '"') else ""} \
      ~{if defined(base_quality_threshold) then ("-q " +  '"' + base_quality_threshold + '"') else ""} \
      ~{if defined(mapping_quality_threshold) then ("-Q " +  '"' + mapping_quality_threshold + '"') else ""} \
      ~{true="-r" false="" chrfromto_region_opt}
  >>>
  parameter_meta {
    list_positions_regions: "list of positions or regions"
    list_input_bam: "list of input BAM filenames, one per line [null]"
    read_ignore_reads: "read length threshold (ignore reads shorter than <int>) [0]"
    d_slash_m: "maximum coverage depth [8000]. If 0, depth is set to the maximum integer value, effectively removing any depth limit."
    base_quality_threshold: "base quality threshold [0]"
    mapping_quality_threshold: "mapping quality threshold [0]"
    chrfromto_region_opt: "<chr:from-to>    region --input-fmt-option OPT[=VAL] Specify a single input file format option in the form of OPTION or OPTION=VALUE --reference FILE Reference sequence FASTA FILE [null]"
    sam_tools: ""
    depth: ""
    in_one_dot_bam: ""
  }
}