version 1.0

task AmptkLulu {
  input {
    Boolean? fast_a
    Boolean? out
    Boolean? min_ratio_type
    Boolean? min_ratio
    Boolean? min_match
    Int? min_relative_co_occurence
    Boolean? debug
    Float one_zero_dot_one_zero_three_eight_slash_s_four_one_four_six_seven_zero_one_seven_zero_one_three_one_two_x
  }
  command <<<
    amptk lulu \
      ~{one_zero_dot_one_zero_three_eight_slash_s_four_one_four_six_seven_zero_one_seven_zero_one_three_one_two_x} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (min_ratio_type) then "--min_ratio_type" else ""} \
      ~{if (min_ratio) then "--min_ratio" else ""} \
      ~{if (min_match) then "--min_match" else ""} \
      ~{if defined(min_relative_co_occurence) then ("--min_relative_cooccurence " +  '"' + min_relative_co_occurence + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    fast_a: "Input OTUs in FASTA format (Required)"
    out: "Output base name. Default: input basename"
    min_ratio_type: "Minimum ratio threshold. Default: min [min,avg]"
    min_ratio: "Minimum ratio. Default: 1"
    min_match: "Minimum match pident (%%). Default: 84"
    min_relative_co_occurence: "relative co-occurance (%%): Default: 95"
    debug: "Keep intermediate files."
    one_zero_dot_one_zero_three_eight_slash_s_four_one_four_six_seven_zero_one_seven_zero_one_three_one_two_x: "Arguments:   -i, --otu_table            Input OTU table (Required)"
  }
  output {
    File out_stdout = stdout()
  }
}