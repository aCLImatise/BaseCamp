version 1.0

task GustafMateJoining {
  input {
    Boolean? rev_compl
    Boolean? quiet
    Boolean? verbose
    Boolean? very_verbose
  }
  command <<<
    gustaf_mate_joining \
      ~{true="--revcompl" false="" rev_compl} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--very-verbose" false="" very_verbose}
  >>>
  parameter_meta {
    rev_compl: "Disable reverse complementing second input file."
    quiet: "Set verbosity to a minimum."
    verbose: "Enable verbose output."
    very_verbose: "Enable very verbose output."
  }
}