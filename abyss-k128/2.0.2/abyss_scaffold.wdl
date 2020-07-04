version 1.0

task AbyssScaffold {
  input {
    String? km_er
    String? genome_size
    String? min_gap
    String? max_gap
    Boolean? complex
    Boolean? no_complex
    Boolean? ss
    Boolean? no_ss
    File? out
    File? graph
    Boolean? verbose
    File? db
    String? library
    String? strain
    String? species
    String fast_a
    String overlap
    String dist
  }
  command <<<
    abyss-scaffold \
      ~{fast_a} \
      ~{overlap} \
      ~{dist} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(min_gap) then ("--min-gap " +  '"' + min_gap + '"') else ""} \
      ~{if defined(max_gap) then ("--max-gap " +  '"' + max_gap + '"') else ""} \
      ~{true="--complex" false="" complex} \
      ~{true="--no-complex" false="" no_complex} \
      ~{true="--SS" false="" ss} \
      ~{true="--no-SS" false="" no_ss} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    km_er: "length of a k-mer"
    genome_size: "expected genome size. Used to calculate NG50 and associated stats [disabled]"
    min_gap: "minimum scaffold gap length to output [50]"
    max_gap: "maximum scaffold gap length to output [inf]"
    complex: "remove complex transitive edges"
    no_complex: "don't remove complex transitive edges [default]"
    ss: "expect contigs to be oriented correctly"
    no_ss: "no assumption about contig orientation [default]"
    out: "write the paths to FILE"
    graph: "write the graph to FILE"
    verbose: "display verbose output"
    db: "specify path of database repository in FILE"
    library: "specify library NAME for sqlite"
    strain: "specify strain NAME for sqlite"
    species: "specify species NAME for sqlite"
    fast_a: "contigs in FASTA format"
    overlap: "the contig overlap graph"
    dist: "estimates of the distance between contigs"
  }
}