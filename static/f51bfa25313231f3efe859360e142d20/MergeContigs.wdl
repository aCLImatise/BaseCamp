version 1.0

task MergeContigs {
  input {
    String? km_er
    File? out
    File? graph
    Boolean? merged
    Boolean? adj
    Boolean? dot
    Boolean? dot_mean_cov
    Boolean? gfa
    Boolean? gfa_one
    Boolean? gfa_two
    Boolean? gv
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
      ~{true="--merged" false="" merged} \
      ~{true="--adj" false="" adj} \
      ~{true="--dot" false="" dot} \
      ~{true="--dot-meancov" false="" dot_mean_cov} \
      ~{true="--gfa" false="" gfa} \
      ~{true="--gfa1" false="" gfa_one} \
      ~{true="--gfa2" false="" gfa_two} \
      ~{true="--gv" false="" gv} \
      ~{true="--sam" false="" sam} \
      ~{true="--verbose" false="" verbose} \
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
    gfa: "output the graph in GFA1 format"
    gfa_one: "output the graph in GFA1 format"
    gfa_two: "output the graph in GFA2 format"
    gv: "output the graph in GraphViz format"
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
}