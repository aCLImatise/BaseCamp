version 1.0

task CoverageFromFastx {
  input {
    String? coverage
    Boolean? longest
    String base_calls
    String ref_len
  }
  command <<<
    coverage_from_fastx \
      ~{base_calls} \
      ~{ref_len} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{true="--longest" false="" longest}
  >>>
  parameter_meta {
    coverage: "Calculate fraction of reads required for this coverage. (default: None)"
    longest: "Use the longest reads when calculating fraction reads required for a given coverage. (default: False)"
    base_calls: "input fastx file."
    ref_len: "reference length (e.g. 4.8kb/mb/gb) or reference fastx from which to calculate length."
  }
}