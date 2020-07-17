version 1.0

task Seatac {
  input {
    String? num_threads
    String? loader_high_water_mark
    String? loader_sleep
    Boolean? loader_warnings
    String? search_sleep
    String? writer_high_water_mark
    String? writer_sleep
    Boolean? writer_warnings
    String? use_tables
    String? build_tables
    String? filter_name
    String? filter_opts
    String? mask
    String? only
    String? stream
    String? table
    Boolean? verbose
    String? write_output_file
    String? stats
  }
  command <<<
    seatac \
      ~{if defined(num_threads) then ("-numthreads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(loader_high_water_mark) then ("-loaderhighwatermark " +  '"' + loader_high_water_mark + '"') else ""} \
      ~{if defined(loader_sleep) then ("-loadersleep " +  '"' + loader_sleep + '"') else ""} \
      ~{true="-loaderwarnings" false="" loader_warnings} \
      ~{if defined(search_sleep) then ("-searchsleep " +  '"' + search_sleep + '"') else ""} \
      ~{if defined(writer_high_water_mark) then ("-writerhighwatermark " +  '"' + writer_high_water_mark + '"') else ""} \
      ~{if defined(writer_sleep) then ("-writersleep " +  '"' + writer_sleep + '"') else ""} \
      ~{true="-writerwarnings" false="" writer_warnings} \
      ~{if defined(use_tables) then ("-usetables " +  '"' + use_tables + '"') else ""} \
      ~{if defined(build_tables) then ("-buildtables " +  '"' + build_tables + '"') else ""} \
      ~{if defined(filter_name) then ("-filtername " +  '"' + filter_name + '"') else ""} \
      ~{if defined(filter_opts) then ("-filteropts " +  '"' + filter_opts + '"') else ""} \
      ~{if defined(mask) then ("-mask " +  '"' + mask + '"') else ""} \
      ~{if defined(only) then ("-only " +  '"' + only + '"') else ""} \
      ~{if defined(stream) then ("-stream " +  '"' + stream + '"') else ""} \
      ~{if defined(table) then ("-table " +  '"' + table + '"') else ""} \
      ~{true="-verbose" false="" verbose} \
      ~{if defined(write_output_file) then ("-output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(stats) then ("-stats " +  '"' + stats + '"') else ""}
  >>>
  parameter_meta {
    num_threads: "Use n search threads"
    loader_high_water_mark: "Size of the loader queue"
    loader_sleep: "Time the loader will sleep when its output queue is full"
    loader_warnings: "Enable warning messages for the loader"
    search_sleep: "Time the searcher will sleep when it has no input"
    writer_high_water_mark: "Size of the output queue"
    writer_sleep: "Time the writer will sleep when it has nothing to write"
    writer_warnings: "Enable warning messages for the writer"
    use_tables: "If 'datfile' exists AND is a complete and valid file, load the tables from the file and do the compute. Otherwise, fail."
    build_tables: "If 'datfile' doesn't exist, build the tables, write them to 'datfile' and exit.  Otherwise, quit."
    filter_name: "Use the shared object x.so as a filter method."
    filter_opts: "The string 'opts' is passed to the filter on creation."
    mask: "Ignore all mers listed in file f"
    only: "Use only the mers listed in file f"
    stream: "Query sequences (the stream)"
    table: "Database sequences (the table)"
    verbose: "Entertain the user"
    write_output_file: "Write output to file f"
    stats: "Write resource statistics to f"
  }
}