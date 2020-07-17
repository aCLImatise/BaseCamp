version 1.0

task GmerCounter {
  input {
    String? db
    String? dbb
    File? write_binary_database
    String? max_km_ers
    Boolean? header
    Boolean? total
    Boolean? unique
    Boolean? km_ers
    String? distribution
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
      ~{if defined(max_km_ers) then ("--max_kmers " +  '"' + max_km_ers + '"') else ""} \
      ~{true="--header" false="" header} \
      ~{true="--total" false="" total} \
      ~{true="--unique" false="" unique} \
      ~{true="--kmers" false="" km_ers} \
      ~{if defined(distribution) then ("--distribution " +  '"' + distribution + '"') else ""} \
      ~{true="-D" false="" increase_debug_level}
  >>>
  parameter_meta {
    db: "- SNP/KMER database file"
    dbb: "- binary database file"
    write_binary_database: "- write binary database to file"
    max_km_ers: "- maximum number of kmers per node"
    header: "- print header row"
    total: "- print the total number of kmers per node"
    unique: "- print the number of nonzero kmers per node"
    km_ers: "- print individual kmer counts (default if no other output)"
    distribution: "- print kmer distribution (up to given number)"
    increase_debug_level: "- increase debug level"
    arguments: ""
    sequences_dot_dot_dot: ""
  }
}