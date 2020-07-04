version 1.0

task MarkRepeats {
  input {
    Boolean? b
    Boolean? agressive
    Boolean? redundancy
    Boolean? no_path_repeats
    Boolean? no_coverage_repeats
    String? an_k
    String bank_name
  }
  command <<<
    MarkRepeats \
      ~{an_k} \
      ~{bank_name} \
      ~{true="-b" false="" b} \
      ~{true="-agressive" false="" agressive} \
      ~{true="-redundancy" false="" redundancy} \
      ~{true="-noPathRepeats" false="" no_path_repeats} \
      ~{true="-noCoverageRepeats" false="" no_coverage_repeats}
  >>>
  parameter_meta {
    b: ""
    agressive: ""
    redundancy: ""
    no_path_repeats: ""
    no_coverage_repeats: ""
    an_k: ""
    bank_name: ""
  }
}