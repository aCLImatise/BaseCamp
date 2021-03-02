version 1.0

task ScanwiseServer {
  input {
    Boolean? compress
    Boolean? hash
    Boolean? two_hit
    Boolean? streamed
    Boolean? oc_file
    Boolean? use_vanilla
    Boolean? usethreads
    Boolean? threaded_db
    Boolean? ordered
    Boolean? thread_no
    Boolean? drop_off
    Boolean? array_numb
    Boolean? seq_load_tile
    Int? seq_load_report
    Boolean? seq_load_trunc
    Boolean? seq_load_start
    Boolean? seq_load_end
    Boolean? version
    Boolean? silent
    Boolean? quiet
    String? error_off_std
    Boolean? error_log
    Boolean? error_style
    String options
  }
  command <<<
    scanwise_server \
      ~{options} \
      ~{if (compress) then "-compress" else ""} \
      ~{if (hash) then "-hash" else ""} \
      ~{if (two_hit) then "-twohit" else ""} \
      ~{if (streamed) then "-streamed" else ""} \
      ~{if (oc_file) then "-ocfile" else ""} \
      ~{if (use_vanilla) then "-usevanilla" else ""} \
      ~{if (usethreads) then "-usethreads" else ""} \
      ~{if (threaded_db) then "-threadeddb" else ""} \
      ~{if (ordered) then "-ordered" else ""} \
      ~{if (thread_no) then "-threadno" else ""} \
      ~{if (drop_off) then "-drop_off" else ""} \
      ~{if (array_numb) then "-array_numb" else ""} \
      ~{if (seq_load_tile) then "-seqloadtile" else ""} \
      ~{if defined(seq_load_report) then ("-seqloadreport " +  '"' + seq_load_report + '"') else ""} \
      ~{if (seq_load_trunc) then "-seqloadtrunc" else ""} \
      ~{if (seq_load_start) then "-seqloadstart" else ""} \
      ~{if (seq_load_end) then "-seqloadend" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (silent) then "-silent" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if defined(error_off_std) then ("-erroroffstd " +  '"' + error_off_std + '"') else ""} \
      ~{if (error_log) then "-errorlog" else ""} \
      ~{if (error_style) then "-errorstyle" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    compress: "use compressed index, for large indexes"
    hash: "use glib hash not array (far slower, but easier on the memory for small DBs)"
    two_hit: "use two hit seed HSP strategy (can be faster for big databases)"
    streamed: "use streamed index (more compact, higher run-time)"
    oc_file: "occupancy file for array/streamed indexes (large), for debugging"
    use_vanilla: "use a vanilla implementation only"
    usethreads: "use a threaded query scan implementation only"
    threaded_db: "use a threaded database scan implementation"
    ordered: "use ordered access implementation"
    thread_no: "[2] number of threads for threaded scan implementation"
    drop_off: "[40] hsp drop off parameter"
    array_numb: "[1000000] hard array numb level in index building"
    seq_load_tile: "tiling skip of load (default 1)"
    seq_load_report: "report (using info) at what stagger rating (default none)"
    seq_load_trunc: "<number>  truncate load after this number of sequeneces (useful for debugging)"
    seq_load_start: "<number>  start position in database for seq load"
    seq_load_end: "<number>  end position in database for seq load"
    version: "show version and compile info"
    silent: "No messages    on stderr"
    quiet: "No report/info on stderr"
    error_off_std: "warning messages to stderr"
    error_log: "[file] Log warning messages to file"
    error_style: "[server/program] style of error reporting (default program)"
    options: "-port         port to bind to (default 4050)"
  }
  output {
    File out_stdout = stdout()
  }
}