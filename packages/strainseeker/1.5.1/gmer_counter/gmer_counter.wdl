version 1.0

task GmerCounter {
  input {
    File? db
    File? dbb
    File? write_binary_database
    Int? max_km_ers
    Boolean? header
    Boolean? total
    Boolean? unique
    Boolean? km_ers
    Int? distribution
    Boolean? increase_debug_level
    String arguments
  }
  command <<<
    gmer_counter \
      ~{arguments} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(dbb) then ("-dbb " +  '"' + dbb + '"') else ""} \
      ~{if defined(write_binary_database) then ("-w " +  '"' + write_binary_database + '"') else ""} \
      ~{if defined(max_km_ers) then ("--max_kmers " +  '"' + max_km_ers + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (total) then "--total" else ""} \
      ~{if (unique) then "--unique" else ""} \
      ~{if (km_ers) then "--kmers" else ""} \
      ~{if defined(distribution) then ("--distribution " +  '"' + distribution + '"') else ""} \
      ~{if (increase_debug_level) then "-D" else ""}
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
  }
  output {
    File out_stdout = stdout()
  }
}