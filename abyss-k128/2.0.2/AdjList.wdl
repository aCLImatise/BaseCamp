version 1.0

task AdjList {
  input {
    String? length_when_set
    String? single_km_er
    String? min_overlap
    Boolean? adj
    Boolean? as_qg
    Boolean? dot
    Boolean? gv
    Boolean? gfa
    Boolean? sam
    Boolean? ss
    Boolean? no_ss
    Boolean? verbose
    File? db
    String? library
    String? strain
    String? species
    String var_16
    String? option
  }
  command <<<
    AdjList \
      ~{var_16} \
      ~{option} \
      ~{if defined(length_when_set) then ("--kmer " +  '"' + length_when_set + '"') else ""} \
      ~{if defined(single_km_er) then ("--single-kmer " +  '"' + single_km_er + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{true="--adj" false="" adj} \
      ~{true="--asqg" false="" as_qg} \
      ~{true="--dot" false="" dot} \
      ~{true="--gv" false="" gv} \
      ~{true="--gfa" false="" gfa} \
      ~{true="--sam" false="" sam} \
      ~{true="--SS" false="" ss} \
      ~{true="--no-SS" false="" no_ss} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    length_when_set: "the length of a k-mer (when -K is not set) or the span of a k-mer pair (when -K is set)"
    single_km_er: "the length of a single k-mer in a k-mer pair"
    min_overlap: "require a minimum overlap of M bases [50]"
    adj: "output the graph in ADJ format [default]"
    as_qg: "output the graph in ASQG format"
    dot: "output the graph in GraphViz format"
    gv: "output the graph in GraphViz format"
    gfa: "output the graph in GFA format"
    sam: "output the graph in SAM format"
    ss: "expect contigs to be oriented correctly"
    no_ss: "no assumption about contig orientation"
    verbose: "display verbose output"
    db: "specify path of database repository in FILE"
    library: "specify library NAME for database"
    strain: "specify strain NAME for database"
    species: "specify species NAME for database"
    var_16: ""
    option: ""
  }
}