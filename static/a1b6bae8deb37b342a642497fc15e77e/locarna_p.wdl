version 1.0

task LocarnaP {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? extended_pf
    Boolean? quad_pf
    Boolean? include_am_in_bm
    Boolean? stopwatch
    Boolean? relaxed_anchors
    String input_one
    String input_two
  }
  command <<<
    locarna_p \
      ~{input_one} \
      ~{input_two} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--extended-pf" false="" extended_pf} \
      ~{true="--quad-pf" false="" quad_pf} \
      ~{true="--include-am-in-bm" false="" include_am_in_bm} \
      ~{true="--stopwatch" false="" stopwatch} \
      ~{true="--relaxed-anchors" false="" relaxed_anchors}
  >>>
  parameter_meta {
    verbose: "Be verbose. Prints input parameters, sequences and size information."
    quiet: "Be quiet."
    extended_pf: "Use extended precision for partition function values. This increases run-time and space (less than 2x), however enables handling significantly larger instances."
    quad_pf: "Use quad precision for partition function values. Even more precision than extended pf, but usually much slower (overrides extended-pf)."
    include_am_in_bm: "Include arc match cases in base match probabilities"
    stopwatch: "Print run time informations."
    relaxed_anchors: "Use relaxed semantics of anchor constraints [default=strict semantics]."
    input_one: ""
    input_two: ""
  }
}