version 1.0

task SamtoolsDepth {
  input {
    String? list_positions_regions
    String? list_input_bam
    Int? minqlen
    Int? base_quality_threshold
    Int? mapping_quality_threshold
    Boolean? chrfromto__region
    Int in_one_dot_bam
  }
  command <<<
    samtools depth \
      ~{in_one_dot_bam} \
      ~{if defined(list_positions_regions) then ("-b " +  '"' + list_positions_regions + '"') else ""} \
      ~{if defined(list_input_bam) then ("-f " +  '"' + list_input_bam + '"') else ""} \
      ~{if defined(minqlen) then ("-l " +  '"' + minqlen + '"') else ""} \
      ~{if defined(base_quality_threshold) then ("-q " +  '"' + base_quality_threshold + '"') else ""} \
      ~{if defined(mapping_quality_threshold) then ("-Q " +  '"' + mapping_quality_threshold + '"') else ""} \
      ~{if (chrfromto__region) then "-r" else ""}
  >>>
  parameter_meta {
    list_positions_regions: "list of positions or regions"
    list_input_bam: "list of input BAM filenames, one per line [null]"
    minqlen: "minQLen"
    base_quality_threshold: "base quality threshold"
    mapping_quality_threshold: "mapping quality threshold"
    chrfromto__region: "<chr:from-to>    region"
    in_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}