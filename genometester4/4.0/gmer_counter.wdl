version 1.0

task GmerCounter {
  input {
    String? db
    String? dbb
    File? write_binary_database
    Boolean? use_bit_integeres
    String? max_km_ers
    Boolean? silent
    Boolean? header
    Boolean? total
    Boolean? unique
    Boolean? km_ers
    File? compile_index
    String? distribution
    Boolean? num_threads
    Boolean? prefetch
    Boolean? increase_debug_level
    String arguments
    String sequences_dot_dot_dot
  }
  command <<<
    gmer_counter \
      ~{arguments} \
      ~{sequences_dot_dot_dot} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(dbb) then ("-dbb " +  '"' + dbb + '"') else ""} \
      ~{if defined(write_binary_database) then ("-w " +  '"' + write_binary_database + '"') else ""} \
      ~{true="-32" false="" use_bit_integeres} \
      ~{if defined(max_km_ers) then ("--max_kmers " +  '"' + max_km_ers + '"') else ""} \
      ~{true="--silent" false="" silent} \
      ~{true="--header" false="" header} \
      ~{true="--total" false="" total} \
      ~{true="--unique" false="" unique} \
      ~{true="--kmers" false="" km_ers} \
      ~{if defined(compile_index) then ("--compile_index " +  '"' + compile_index + '"') else ""} \
      ~{if defined(distribution) then ("--distribution " +  '"' + distribution + '"') else ""} \
      ~{true="--num_threads" false="" num_threads} \
      ~{true="--prefetch" false="" prefetch} \
      ~{true="-D" false="" increase_debug_level}
  >>>
  parameter_meta {
    db: "- SNP/KMER database file"
    dbb: "- binary database file"
    write_binary_database: "- write binary database to file"
    use_bit_integeres: "- use 32-bit integeres for counts (default 16-bit)"
    max_km_ers: "- maximum number of kmers per node"
    silent: "- do not output kmer counts (useful if only compiling db or index is needed"
    header: "- print header row"
    total: "- print the total number of kmers per node"
    unique: "- print the number of nonzero kmers per node"
    km_ers: "- print individual kmer counts (default if no other output)"
    compile_index: "- Add read index to database and write it to file"
    distribution: "- print kmer distribution (up to given number)"
    num_threads: "- number of worker threads (default 24)"
    prefetch: "- prefetch memory mapped files (faster on high-memory systems)"
    increase_debug_level: "- increase debug level"
    arguments: ""
    sequences_dot_dot_dot: ""
  }
}