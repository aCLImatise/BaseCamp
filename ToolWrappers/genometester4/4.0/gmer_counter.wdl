version 1.0

task GmerCounter {
  input {
    File? db
    File? dbb
    File? write_binary_database
    Boolean? use_bit_integeres
    Int? max_km_ers
    Boolean? silent
    Boolean? header
    Boolean? total
    Boolean? unique
    Boolean? km_ers
    File? compile_index
    Int? distribution
    Boolean? num_threads
    Boolean? prefetch
    Boolean? increase_debug_level
    String arguments
  }
  command <<<
    gmer_counter \
      ~{arguments} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(dbb) then ("-dbb " +  '"' + dbb + '"') else ""} \
      ~{if defined(write_binary_database) then ("-w " +  '"' + write_binary_database + '"') else ""} \
      ~{if (use_bit_integeres) then "-32" else ""} \
      ~{if defined(max_km_ers) then ("--max_kmers " +  '"' + max_km_ers + '"') else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (total) then "--total" else ""} \
      ~{if (unique) then "--unique" else ""} \
      ~{if (km_ers) then "--kmers" else ""} \
      ~{if defined(compile_index) then ("--compile_index " +  '"' + compile_index + '"') else ""} \
      ~{if defined(distribution) then ("--distribution " +  '"' + distribution + '"') else ""} \
      ~{if (num_threads) then "--num_threads" else ""} \
      ~{if (prefetch) then "--prefetch" else ""} \
      ~{if (increase_debug_level) then "-D" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  }
  output {
    File out_stdout = stdout()
  }
}