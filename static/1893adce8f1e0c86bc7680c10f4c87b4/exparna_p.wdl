version 1.0

task ExparnaP {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? in_exact_struct_match
    Boolean? add_filter
    Boolean? no_chaining
    Boolean? relaxed_anchors
    Boolean? stopwatch
    String input_one
    String input_two
  }
  command <<<
    exparna_p \
      ~{input_one} \
      ~{input_two} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--inexact-struct-match" false="" in_exact_struct_match} \
      ~{true="--add-filter" false="" add_filter} \
      ~{true="--no-chaining" false="" no_chaining} \
      ~{true="--relaxed-anchors" false="" relaxed_anchors} \
      ~{true="--stopwatch" false="" stopwatch}
  >>>
  parameter_meta {
    verbose: "Verbose"
    quiet: "Quiet"
    in_exact_struct_match: "Allow inexact structure matches"
    add_filter: "Apply an additional filter to enumerate only EPMs that are maximally extended (only inexact)"
    no_chaining: "Do not use the chaining algorithm to find best overall chain"
    relaxed_anchors: "Relax anchor constraints (default=off)"
    stopwatch: "Print run time information."
    input_one: ""
    input_two: ""
  }
}