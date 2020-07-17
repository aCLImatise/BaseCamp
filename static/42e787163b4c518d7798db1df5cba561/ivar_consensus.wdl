version 1.0

task IvarConsensus {
  input {
    Boolean? minimum_quality_score
    Boolean? minimum_frequency_threshold
    Boolean? minimum_depth_call
    Boolean? will_override_option
    Boolean? n__character
    Boolean? required_prefix_output
    Boolean? aa
    Boolean? a
    String? d
    String? var_9
    String sam_tools
    String m_pile_up
    String input_dot_bam
  }
  command <<<
    ivar consensus \
      ~{sam_tools} \
      ~{m_pile_up} \
      ~{input_dot_bam} \
      ~{true="-q" false="" minimum_quality_score} \
      ~{true="-t" false="" minimum_frequency_threshold} \
      ~{true="-m" false="" minimum_depth_call} \
      ~{true="-k" false="" will_override_option} \
      ~{true="-n" false="" n__character} \
      ~{true="-p" false="" required_prefix_output} \
      ~{true="-aa" false="" aa} \
      ~{true="-A" false="" a} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(var_9) then ("-Q " +  '"' + var_9 + '"') else ""}
  >>>
  parameter_meta {
    minimum_quality_score: "Minimum quality score threshold to count base (Default: 20)"
    minimum_frequency_threshold: "Minimum frequency threshold(0 - 1) to call consensus. (Default: 0) Frequently used thresholds | Description ---------------------------|------------ 0 | Majority or most common base 0.2 | Bases that make up atleast 20% of the depth at a position 0.5 | Strict or bases that make up atleast 50% of the depth at a position 0.9 | Strict or bases that make up atleast 90% of the depth at a position 1 | Identical or bases that make up 100% of the depth at a position. Will have highest ambiguities"
    minimum_depth_call: "Minimum depth to call consensus(Default: 10)"
    will_override_option: "If '-k' flag is added, regions with depth less than minimum depth will not be added to the consensus sequence. Using '-k' will override any option specified using -n "
    n__character: "(N/-) Character to print in regions with less than minimum coverage(Default: N)"
    required_prefix_output: "(Required) Prefix for the output fasta file and quality file"
    aa: ""
    a: ""
    d: ""
    var_9: ""
    sam_tools: ""
    m_pile_up: ""
    input_dot_bam: ""
  }
}