version 1.0

task MergePaths {
  input {
    Int? km_er
    Int? seed_length
    Int? genome_size
    File? out
    Boolean? no_greedy
    Boolean? greedy
    File? graph
    Int? threads
    Boolean? verbose
    File? db
    String? library
    String? strain
    String? species
    String len
    File path
  }
  command <<<
    MergePaths \
      ~{len} \
      ~{path} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(seed_length) then ("--seed-length " +  '"' + seed_length + '"') else ""} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (no_greedy) then "--no-greedy" else ""} \
      ~{if (greedy) then "--greedy" else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    km_er: "k-mer size"
    seed_length: "minimum length of a seed contig [0]"
    genome_size: "expected genome size. Used to calculate NG50\\nand associated stats [disabled]"
    out: "write result to FILE"
    no_greedy: "use the non-greedy algorithm [default]"
    greedy: "use the greedy algorithm"
    graph: "write the path overlap graph to FILE"
    threads: "use N parallel threads [1]"
    verbose: "display verbose output"
    db: "specify path of database repository in FILE"
    library: "specify library NAME for database"
    strain: "specify strain NAME for database"
    species: "specify species NAME for database"
    len: "lengths of the contigs"
    path: "sequences of contig IDs"
  }
  output {
    File out_stdout = stdout()
  }
}