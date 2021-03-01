version 1.0

task IvarConsensus {
  input {
    Boolean? minimum_quality_score
    Boolean? minimum_frequency_threshold
    Boolean? minimum_depth_call
    Boolean? override_option_specified
    Boolean? _character_print
    File? required_prefix_output
    Int? var_6
    Int? d
    Boolean? a
    Boolean? aa
    String sam_tools
    String m_pile_up
    String input_dot_bam
  }
  command <<<
    ivar consensus \
      ~{sam_tools} \
      ~{m_pile_up} \
      ~{input_dot_bam} \
      ~{if (minimum_quality_score) then "-q" else ""} \
      ~{if (minimum_frequency_threshold) then "-t" else ""} \
      ~{if (minimum_depth_call) then "-m" else ""} \
      ~{if (override_option_specified) then "-k" else ""} \
      ~{if (_character_print) then "-n" else ""} \
      ~{if (required_prefix_output) then "-p" else ""} \
      ~{if defined(var_6) then ("-Q " +  '"' + var_6 + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if (a) then "-A" else ""} \
      ~{if (aa) then "-aa" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    minimum_quality_score: "Minimum quality score threshold to count base (Default: 20)"
    minimum_frequency_threshold: "Minimum frequency threshold(0 - 1) to call consensus. (Default: 0)\\nFrequently used thresholds | Description\\n---------------------------|------------\\n0 | Majority or most common base\\n0.2 | Bases that make up atleast 20% of the depth at a position\\n0.5 | Strict or bases that make up atleast 50% of the depth at a position\\n0.9 | Strict or bases that make up atleast 90% of the depth at a position\\n1 | Identical or bases that make up 100% of the depth at a position. Will have highest ambiguities"
    minimum_depth_call: "Minimum depth to call consensus(Default: 10)"
    override_option_specified: "If '-k' flag is added, regions with depth less than minimum depth will not be added to the consensus sequence. Using '-k' will override any option specified using -n"
    _character_print: "(N/-) Character to print in regions with less than minimum coverage(Default: N)"
    required_prefix_output: "(Required) Prefix for the output fasta file and quality file"
    var_6: ""
    d: ""
    a: ""
    aa: ""
    sam_tools: ""
    m_pile_up: ""
    input_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_required_prefix_output = "${in_required_prefix_output}"
  }
}