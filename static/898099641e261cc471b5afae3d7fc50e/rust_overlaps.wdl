version 1.0

task RustOverlaps {
  input {
    Boolean? edit_distance
    Boolean? format_line
    Boolean? greedy_output
    Boolean? inclusions
    Boolean? no_n
    Boolean? print
    Boolean? reversals
    Boolean? track_progress
    Boolean? verbose
    String? mode
    String? worker_threads
    String? flags
    String in_path
    String out_path
    String err_rate
    String thresh
  }
  command <<<
    rust-overlaps \
      ~{flags} \
      ~{in_path} \
      ~{out_path} \
      ~{err_rate} \
      ~{thresh} \
      ~{true="--edit_distance" false="" edit_distance} \
      ~{true="--format_line" false="" format_line} \
      ~{true="--greedy_output" false="" greedy_output} \
      ~{true="--inclusions" false="" inclusions} \
      ~{true="--no_n" false="" no_n} \
      ~{true="--print" false="" print} \
      ~{true="--reversals" false="" reversals} \
      ~{true="--track_progress" false="" track_progress} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(worker_threads) then ("--worker_threads " +  '"' + worker_threads + '"') else ""}
  >>>
  parameter_meta {
    edit_distance: "Uses Levenshtein / edit distance instead of Hamming distance"
    format_line: "The first line of the output file will contain a TSV header line."
    greedy_output: "Threads print solutions to output greedily instead of storing them. Limited duplication may arise"
    inclusions: "Enables finding of inclusion overlaps (one string within another)"
    no_n: "Omits N symbol from alphabet saving time. Will remove N symbols from input file (with a warning)"
    print: "For each solution printed to file, also prints a rough visualization to stdout (mostly for debugging purposes)"
    reversals: "Enables reversals of input strings"
    track_progress: "Prints progress bar for completed tasks and ETA to stdout"
    verbose: "Prints completed steps of the run process"
    mode: "Uses the filtering scheme mode given options {valimaki, kucherov}. Modes can also be supplied string arguments i.e. 'kucherov_2'. (Default : kucherov_2"
    worker_threads: "Number of worker threads used. Defaults to number of logical cpu cores"
    flags: ""
    in_path: ""
    out_path: ""
    err_rate: ""
    thresh: ""
  }
}