version 1.0

task RmSpuriousEvents.py {
  input {
    String? outfile
    String? threshold
    Boolean? verbose
    Boolean? debug
    String events
  }
  command <<<
    rm_spurious_events.py \
      ~{events} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    outfile: "Write results to this file. (default: None)"
    threshold: "Threshold for spurious event removal. (default: 0.1)"
    verbose: "Be verbose. (default: False)"
    debug: "Print lots of debugging information (default: False)"
    events: "Path to bed6 file containing alignments."
  }
}