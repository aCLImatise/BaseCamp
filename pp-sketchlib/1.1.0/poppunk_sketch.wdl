version 1.0

task PoppunkSketch {
  input {
    Boolean? sketch
    Boolean? query
    String? r_file
    String? ref_db
    String? query_db
    Int? min_k
    Int? max_k
    String? k_step
    String? sketch_size
    Int? min_count
    String? cpus
    String pp_sketch
  }
  command <<<
    poppunk_sketch \
      ~{pp_sketch} \
      ~{true="--sketch" false="" sketch} \
      ~{true="--query" false="" query} \
      ~{if defined(r_file) then ("--rfile " +  '"' + r_file + '"') else ""} \
      ~{if defined(ref_db) then ("--ref-db " +  '"' + ref_db + '"') else ""} \
      ~{if defined(query_db) then ("--query-db " +  '"' + query_db + '"') else ""} \
      ~{if defined(min_k) then ("--min-k " +  '"' + min_k + '"') else ""} \
      ~{if defined(max_k) then ("--max-k " +  '"' + max_k + '"') else ""} \
      ~{if defined(k_step) then ("--k-step " +  '"' + k_step + '"') else ""} \
      ~{if defined(sketch_size) then ("--sketch-size " +  '"' + sketch_size + '"') else ""} \
      ~{if defined(min_count) then ("--min-count " +  '"' + min_count + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""}
  >>>
  parameter_meta {
    sketch: "Create a database of sketches"
    query: "Find distances between two sketch databases"
    r_file: "Samples to sketch"
    ref_db: "Prefix of reference database file"
    query_db: "Prefix of query database file"
    min_k: "Minimum kmer length [default = 13]"
    max_k: "Maximum kmer length [default = 29]"
    k_step: "K-mer step size [default = 4]"
    sketch_size: "Kmer sketch size [default = 10000]"
    min_count: "Minimum k-mer count from reads [default = 20]"
    cpus: "Number of CPUs to use [default = 1]"
    pp_sketch: ""
  }
}