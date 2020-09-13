version 1.0

task Seagen {
  input {
    String? mer_size
    String? mer_skip
    Boolean? forward
    Boolean? reverse
    String? max_diagonal
    String? max_gap
    String? q_overlap
    String? d_overlap
    String? max_intron
    Boolean? small_sequence
    String? single_length
    String? single_coverage
    String? multiple_length
    String? multiple_coverage
    String? extend_weight
    String? extend_minimum
    String? num_threads
    Int? loader_queue
    String? loader_sleep
    Boolean? loader_warnings
    String? search_sleep
    Int? writer_queue
    String? writer_sleep
    Boolean? writer_warnings
    File? build_tables
    File? use_tables
    File? mask
    File? only
    String? cdna
    Boolean? stream
    String? genomic
    Boolean? table
    Boolean? verbose
    Boolean? binary
    File? write_output_file
    File? count
  }
  command <<<
    seagen \
      ~{if defined(mer_size) then ("-mersize " +  '"' + mer_size + '"') else ""} \
      ~{if defined(mer_skip) then ("-merskip " +  '"' + mer_skip + '"') else ""} \
      ~{if (forward) then "-forward" else ""} \
      ~{if (reverse) then "-reverse" else ""} \
      ~{if defined(max_diagonal) then ("-maxdiagonal " +  '"' + max_diagonal + '"') else ""} \
      ~{if defined(max_gap) then ("-maxgap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(q_overlap) then ("-qoverlap " +  '"' + q_overlap + '"') else ""} \
      ~{if defined(d_overlap) then ("-doverlap " +  '"' + d_overlap + '"') else ""} \
      ~{if defined(max_intron) then ("-maxintron " +  '"' + max_intron + '"') else ""} \
      ~{if (small_sequence) then "-smallsequence" else ""} \
      ~{if defined(single_length) then ("-singlelength " +  '"' + single_length + '"') else ""} \
      ~{if defined(single_coverage) then ("-singlecoverage " +  '"' + single_coverage + '"') else ""} \
      ~{if defined(multiple_length) then ("-multiplelength " +  '"' + multiple_length + '"') else ""} \
      ~{if defined(multiple_coverage) then ("-multiplecoverage " +  '"' + multiple_coverage + '"') else ""} \
      ~{if defined(extend_weight) then ("-extendweight " +  '"' + extend_weight + '"') else ""} \
      ~{if defined(extend_minimum) then ("-extendminimum " +  '"' + extend_minimum + '"') else ""} \
      ~{if defined(num_threads) then ("-numthreads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(loader_queue) then ("-loaderqueue " +  '"' + loader_queue + '"') else ""} \
      ~{if defined(loader_sleep) then ("-loadersleep " +  '"' + loader_sleep + '"') else ""} \
      ~{if (loader_warnings) then "-loaderwarnings" else ""} \
      ~{if defined(search_sleep) then ("-searchsleep " +  '"' + search_sleep + '"') else ""} \
      ~{if defined(writer_queue) then ("-writerqueue " +  '"' + writer_queue + '"') else ""} \
      ~{if defined(writer_sleep) then ("-writersleep " +  '"' + writer_sleep + '"') else ""} \
      ~{if (writer_warnings) then "-writerwarnings" else ""} \
      ~{if defined(build_tables) then ("-buildtables " +  '"' + build_tables + '"') else ""} \
      ~{if defined(use_tables) then ("-usetables " +  '"' + use_tables + '"') else ""} \
      ~{if defined(mask) then ("-mask " +  '"' + mask + '"') else ""} \
      ~{if defined(only) then ("-only " +  '"' + only + '"') else ""} \
      ~{if defined(cdna) then ("-cdna " +  '"' + cdna + '"') else ""} \
      ~{if (stream) then "-stream" else ""} \
      ~{if defined(genomic) then ("-genomic " +  '"' + genomic + '"') else ""} \
      ~{if (table) then "-table" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (binary) then "-binary" else ""} \
      ~{if defined(write_output_file) then ("-output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(count) then ("-count " +  '"' + count + '"') else ""}
  >>>
  parameter_meta {
    mer_size: "Use k-mers"
    mer_skip: "Skip j mers between each mer inserted into table"
    forward: "Search only the normal query sequences"
    reverse: "Search only the reverse-complemented query sequences"
    max_diagonal: ""
    max_gap: ""
    q_overlap: ""
    d_overlap: ""
    max_intron: ""
    small_sequence: ""
    single_length: ""
    single_coverage: ""
    multiple_length: ""
    multiple_coverage: ""
    extend_weight: ""
    extend_minimum: ""
    num_threads: "Use n search threads"
    loader_queue: "Size of the loader queue"
    loader_sleep: "Time the loader will sleep when its output queue is full"
    loader_warnings: "Enable warning messages for the loader"
    search_sleep: "Time the searcher will sleep when it has no input"
    writer_queue: "Size of the output queue"
    writer_sleep: "Time the writer will sleep when it has nothing to write"
    writer_warnings: "Enable warning messages for the writer"
    build_tables: "If 'datfile' doesn't exist, build the tables, write\\nthem to 'datfile' and exit."
    use_tables: "Load the tables from 'datfile' file and do the compute.\\nIf 'datfile' doesn't exist, an implicit -buildtables is\\nperformed."
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
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}