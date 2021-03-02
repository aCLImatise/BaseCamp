version 1.0

task ClassifyMates {
  input {
    String? read_fragments_here
    String? read_overlaps_here
    String? write_results_here
    Int? use_overlaps_less
    String? use_compute_threads
    String? use_most_unlimited
    String? sl
    String? bl
    Boolean? cache
    Boolean? cache_only
    Boolean? do_report_progress
    Int? min
    Int? max
    Boolean? in_nie
    Boolean? out_tie
    String? bfs
    String? dfs
    File? rfs
    Boolean? no_suspicious
  }
  command <<<
    classifyMates \
      ~{if defined(read_fragments_here) then ("-G " +  '"' + read_fragments_here + '"') else ""} \
      ~{if defined(read_overlaps_here) then ("-O " +  '"' + read_overlaps_here + '"') else ""} \
      ~{if defined(write_results_here) then ("-o " +  '"' + write_results_here + '"') else ""} \
      ~{if defined(use_overlaps_less) then ("-e " +  '"' + use_overlaps_less + '"') else ""} \
      ~{if defined(use_compute_threads) then ("-t " +  '"' + use_compute_threads + '"') else ""} \
      ~{if defined(use_most_unlimited) then ("-m " +  '"' + use_most_unlimited + '"') else ""} \
      ~{if defined(sl) then ("-sl " +  '"' + sl + '"') else ""} \
      ~{if defined(bl) then ("-bl " +  '"' + bl + '"') else ""} \
      ~{if (cache) then "-cache" else ""} \
      ~{if (cache_only) then "-cacheonly" else ""} \
      ~{if (do_report_progress) then "-q" else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if (in_nie) then "-innie" else ""} \
      ~{if (out_tie) then "-outtie" else ""} \
      ~{if defined(bfs) then ("-bfs " +  '"' + bfs + '"') else ""} \
      ~{if defined(dfs) then ("-dfs " +  '"' + dfs + '"') else ""} \
      ~{if defined(rfs) then ("-rfs " +  '"' + rfs + '"') else ""} \
      ~{if (no_suspicious) then "-nosuspicious" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_fragments_here: "Read fragments from here"
    read_overlaps_here: "Read overlaps from here"
    write_results_here: "Write results here"
    use_overlaps_less: "Use overlaps with less than 'maxError' fraction error (default 0.045)"
    use_compute_threads: "Use 'n' compute threads"
    use_most_unlimited: "Use at most 'm' GB memory (default: unlimited)"
    sl: "[-m]        Search for mates in libraries l-m"
    bl: "[-m]        Use libraries l-m for searching"
    cache: "Write loaded data to cache files"
    cache_only: "Write loaded data to cache files, stop after building"
    do_report_progress: "Don't report progress."
    min: "Mates must be at least m bases apart"
    max: "Mates must be at most m bases apart"
    in_nie: "Mates must be innie (NOT SUPPORTED)"
    out_tie: "Mates must be outtie"
    bfs: "Use 'breadth-first search'; search at most N fragments"
    dfs: "Use 'depth-first search'; search to depth N overlaps"
    rfs: "Use 'random-path search'; search at most N paths"
    no_suspicious: "Don't search for suspicious pairs."
  }
  output {
    File out_stdout = stdout()
  }
}