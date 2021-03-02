version 1.0

task RmSpuriousEventspy {
  input {
    File? outfile
    Float? threshold
    Boolean? verbose
    Boolean? debug
    String duplicates
    String events
  }
  command <<<
    rm_spurious_events_py \
      ~{duplicates} \
      ~{events} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "Write results to this file. (default: None)"
    threshold: "Threshold for spurious event removal. (default: 0.1)"
    verbose: "Be verbose. (default: False)"
    debug: "Print lots of debugging information (default: False)"
    duplicates: "Output:"
    events: "Path to bed6 file containing alignments."
  }
  output {
    File out_stdout = stdout()
  }
}