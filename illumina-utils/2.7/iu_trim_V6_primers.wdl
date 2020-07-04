version 1.0

task IuTrimV6Primers {
  input {
    Boolean? archaea
    Boolean? debug
    String input_fast_a
  }
  command <<<
    iu-trim-V6-primers \
      ~{input_fast_a} \
      ~{true="--archaea" false="" archaea} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    archaea: "When set, primers for arhacea is used instead of bacteria."
    debug: "Turn on debug prints."
    input_fast_a: "FASTA file that contain archaeal or bacterial V6 sequences with primers. This file is expected to be the result of iu-merge- pairs analysis with these flags and parameter: \"--marker-gene- stringent --retain-only-overlap --max-num-mismatches 0\"."
  }
}