version 1.0

task RepeatProteinMask {
  input {
    Boolean? no_low_simple
  }
  command <<<
    RepeatProteinMask \
      ~{true="-noLowSimple" false="" no_low_simple}
  >>>
  parameter_meta {
    no_low_simple: "Turns off masking/annotating of low complexity and simple repeats in the final output. Low complexity and simple repeat analysis will still occur prior to looking for matches to the RepeatPep database. Detailed help"
  }
}