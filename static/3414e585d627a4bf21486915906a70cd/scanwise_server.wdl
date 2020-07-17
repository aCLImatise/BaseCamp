version 1.0

task ScanwiseServer {
  input {
    Boolean? use_vanilla
    Boolean? usethreads
    Boolean? threaded_db
    Boolean? ordered
    Boolean? thread_no
    Boolean? drop_off
    Boolean? array_numb
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
      ~{true="-usevanilla" false="" use_vanilla} \
      ~{true="-usethreads" false="" usethreads} \
      ~{true="-threadeddb" false="" threaded_db} \
      ~{true="-ordered" false="" ordered} \
      ~{true="-threadno" false="" thread_no} \
      ~{true="-drop_off" false="" drop_off} \
      ~{true="-array_numb" false="" array_numb} \
      ~{true="-version" false="" version} \
      ~{true="-silent" false="" silent} \
      ~{true="-quiet" false="" quiet} \
      ~{if defined(error_off_std) then ("-erroroffstd " +  '"' + error_off_std + '"') else ""} \
      ~{true="-errorlog" false="" error_log} \
      ~{true="-errorstyle" false="" error_style}
  >>>
  parameter_meta {
    use_vanilla: "use a vanilla implementation only"
    usethreads: "use a threaded query scan implementation only"
    threaded_db: "use a threaded database scan implementation"
    ordered: "use ordered access implementation"
    thread_no: "[2] number of threads for threaded scan implementation"
    drop_off: "[40] hsp drop off parameter"
    array_numb: "[1000000] hard array numb level in index building"
    version: "show version and compile info"
    silent: "No messages    on stderr"
    quiet: "No report/info on stderr"
    error_off_std: "warning messages to stderr"
    error_log: "[file] Log warning messages to file"
    error_style: "[server/program] style of error reporting (default program)"
    options: "-port         port to bind to (default 4050) -compress     use compressed index, for large indexes -hash         use glib hash not array (far slower, but easier on the memory for small DBs) -twohit       use two hit seed HSP strategy (can be faster for big databases) -streamed     use streamed index (more compact, higher run-time) -ocfile       occupancy file for array/streamed indexes (large), for debugging"
  }
}