version 1.0

task Rustoverlaps {
  input {
    Boolean? edit_distance
    File? format_line
    Boolean? greedy_output
    Boolean? inclusions
    Boolean? no_n
    Boolean? print
    Boolean? reversals
    Boolean? track_progress
    Boolean? verbose
    String? mode
    Int? worker_threads
    String arise
  }
  command <<<
    rust_overlaps \
      ~{arise} \
      ~{if (edit_distance) then "--edit_distance" else ""} \
      ~{if (format_line) then "--format_line" else ""} \
      ~{if (greedy_output) then "--greedy_output" else ""} \
      ~{if (inclusions) then "--inclusions" else ""} \
      ~{if (no_n) then "--no_n" else ""} \
      ~{if (print) then "--print" else ""} \
      ~{if (reversals) then "--reversals" else ""} \
      ~{if (track_progress) then "--track_progress" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(worker_threads) then ("--worker_threads " +  '"' + worker_threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    edit_distance: "Uses Levenshtein / edit distance instead of Hamming distance"
    format_line: "The first line of the output file will contain a TSV header line."
    greedy_output: "Threads print solutions to output greedily instead of storing them. Limited duplication may"
    inclusions: "Enables finding of inclusion overlaps (one string within another)"
    no_n: "Omits N symbol from alphabet saving time. Will remove N symbols from input file (with a\\nwarning)"
    print: "For each solution printed to file, also prints a rough visualization to stdout (mostly for\\ndebugging purposes)"
    reversals: "Enables reversals of input strings"
    track_progress: "Prints progress bar for completed tasks and ETA to stdout"
    verbose: "Prints completed steps of the run process"
    mode: "Uses the filtering scheme mode given options {valimaki, kucherov}. Modes\\ncan also be supplied string arguments i.e. 'kucherov_2'. (Default :\\nkucherov_2"
    worker_threads: "Number of worker threads used. Defaults to number of logical cpu cores"
    arise: "-h, --help              Prints help information"
  }
  output {
    File out_stdout = stdout()
    File out_format_line = "${in_format_line}"
  }
}