version 1.0

task Seagen {
  input {
    String? num_threads
    String? loader_queue
    String? loader_sleep
    Boolean? loader_warnings
    String? search_sleep
    String? writer_queue
    String? writer_sleep
    Boolean? writer_warnings
    String? build_tables
    String? use_tables
    String? mask
    String? only
    String? cdna
    Boolean? stream
    String? genomic
    Boolean? table
    Boolean? verbose
    Boolean? binary
    String? write_output_file
    String? count
  }
  command <<<
    seagen \
      ~{if defined(num_threads) then ("-numthreads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(loader_queue) then ("-loaderqueue " +  '"' + loader_queue + '"') else ""} \
      ~{if defined(loader_sleep) then ("-loadersleep " +  '"' + loader_sleep + '"') else ""} \
      ~{true="-loaderwarnings" false="" loader_warnings} \
      ~{if defined(search_sleep) then ("-searchsleep " +  '"' + search_sleep + '"') else ""} \
      ~{if defined(writer_queue) then ("-writerqueue " +  '"' + writer_queue + '"') else ""} \
      ~{if defined(writer_sleep) then ("-writersleep " +  '"' + writer_sleep + '"') else ""} \
      ~{true="-writerwarnings" false="" writer_warnings} \
      ~{if defined(build_tables) then ("-buildtables " +  '"' + build_tables + '"') else ""} \
      ~{if defined(use_tables) then ("-usetables " +  '"' + use_tables + '"') else ""} \
      ~{if defined(mask) then ("-mask " +  '"' + mask + '"') else ""} \
      ~{if defined(only) then ("-only " +  '"' + only + '"') else ""} \
      ~{if defined(cdna) then ("-cdna " +  '"' + cdna + '"') else ""} \
      ~{true="-stream" false="" stream} \
      ~{if defined(genomic) then ("-genomic " +  '"' + genomic + '"') else ""} \
      ~{true="-table" false="" table} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-binary" false="" binary} \
      ~{if defined(write_output_file) then ("-output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(count) then ("-count " +  '"' + count + '"') else ""}
  >>>
  parameter_meta {
    num_threads: "Use n search threads"
    loader_queue: "Size of the loader queue"
    loader_sleep: "Time the loader will sleep when its output queue is full"
    loader_warnings: "Enable warning messages for the loader"
    search_sleep: "Time the searcher will sleep when it has no input"
    writer_queue: "Size of the output queue"
    writer_sleep: "Time the writer will sleep when it has nothing to write"
    writer_warnings: "Enable warning messages for the writer"
    build_tables: "If 'datfile' doesn't exist, build the tables, write them to 'datfile' and exit."
    use_tables: "Load the tables from 'datfile' file and do the compute. If 'datfile' doesn't exist, an implicit -buildtables is performed."
    mask: "Ignore all mers listed in file f"
    only: "Use only the mers listed in file f"
    cdna: "Query sequences (the cDNA, the stream)"
    stream: "An alias for -cdna"
    genomic: "Database sequences (the genome, the table)"
    table: "An alias for -genomic)"
    verbose: "Entertain the user"
    binary: "Write the hits in a binary format"
    write_output_file: "Write output to file f"
    count: "Write counts of hits to file f"
  }
}