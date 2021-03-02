version 1.0

task Mprofreport {
  input {
    File? out
    Boolean? traces
    Int? max_frames
    Array[Int] reports
    String? method_sort
    String? alloc_sort
    String? counters_sort
    Array[Int] track
    String? find
    String? thread
    String? time
    Boolean? verbose
    Boolean? debug
    File? coverage_out
    File filename
  }
  command <<<
    mprof_report \
      ~{filename} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (traces) then "--traces" else ""} \
      ~{if defined(max_frames) then ("--maxframes " +  '"' + max_frames + '"') else ""} \
      ~{if defined(reports) then ("--reports " +  '"' + reports + '"') else ""} \
      ~{if defined(method_sort) then ("--method-sort " +  '"' + method_sort + '"') else ""} \
      ~{if defined(alloc_sort) then ("--alloc-sort " +  '"' + alloc_sort + '"') else ""} \
      ~{if defined(counters_sort) then ("--counters-sort " +  '"' + counters_sort + '"') else ""} \
      ~{if defined(track) then ("--track " +  '"' + track + '"') else ""} \
      ~{if defined(find) then ("--find " +  '"' + find + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(coverage_out) then ("--coverage-out " +  '"' + coverage_out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "write to FILE instead of stdout"
    traces: "collect and show backtraces"
    max_frames: "limit backtraces to NUM entries"
    reports: "print the specified reports. Defaults are:\\nheader,jit,gc,sample,alloc,call,metadata,exception,monitor,thread,heapshot,counters,coverage"
    method_sort: "sort methods according to MODE: total, self, calls"
    alloc_sort: "sort allocations according to MODE: bytes, count"
    counters_sort: "sort counters according to MODE: time, category\\nonly accessible in verbose mode"
    track: "track what happens to objects OBJ1, O2 etc."
    find: "find and track objects matching FINFSPEC, where FINDSPEC is:\\nS:minimum_size or T:partial_name"
    thread: "consider just the data for thread THREADID"
    time: "consider data FROM seconds from startup up to TO seconds"
    verbose: "increase verbosity level"
    debug: "display decoding debug info for mprof-report devs"
    coverage_out: "write the coverage info to FILE as XML"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}