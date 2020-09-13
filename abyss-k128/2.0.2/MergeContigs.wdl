version 1.0

task MergeContigs {
  input {
    Int? km_er
    File? out
    File? graph
    Boolean? merged
    Boolean? adj
    Boolean? dot
    Boolean? dot_mean_cov
    Boolean? sam
    Boolean? verbose
    File? db
    String? library
    String? strain
    String? species
    String fast_a
    String overlap
    File path
  }
  command <<<
    MergeContigs \
      ~{fast_a} \
      ~{overlap} \
      ~{path} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if (merged) then "--merged" else ""} \
      ~{if (adj) then "--adj" else ""} \
      ~{if (dot) then "--dot" else ""} \
      ~{if (dot_mean_cov) then "--dot-meancov" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    km_er: "k-mer size"
    out: "output the merged contigs to FILE [stdout]"
    graph: "write the contig overlap graph to FILE"
    merged: "output only merged contigs"
    adj: "output the graph in adj format"
    dot: "output the graph in dot format [default]"
    dot_mean_cov: "same as above but give the mean coverage"
    sam: "output the graph in SAM format"
    verbose: "display verbose output"
    db: "specify path of database repository in FILE"
    library: "specify library NAME for database"
    strain: "specify strain NAME for database"
    species: "specify species NAME for database"
    fast_a: "contigs in FASTA format"
    overlap: "contig overlap graph"
    path: "sequences of contig IDs"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}