version 1.0

task Abyssscaffold {
  input {
    Int? n_pairs
    Int? seed_length
    Int? km_er
    Int? genome_size
    Int? min_gap
    Int? max_gap
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
    abyss_scaffold \
      ~{fast_a} \
      ~{overlap} \
      ~{dist} \
      ~{if defined(n_pairs) then ("--npairs " +  '"' + n_pairs + '"') else ""} \
      ~{if defined(seed_length) then ("--seed-length " +  '"' + seed_length + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(min_gap) then ("--min-gap " +  '"' + min_gap + '"') else ""} \
      ~{if defined(max_gap) then ("--max-gap " +  '"' + max_gap + '"') else ""} \
      ~{if (complex) then "--complex" else ""} \
      ~{if (no_complex) then "--no-complex" else ""} \
      ~{if (ss) then "--SS" else ""} \
      ~{if (no_ss) then "--no-SS" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    n_pairs: "minimum number of pairs [0]"
    seed_length: "minimum contig length [200]\\nor -s N0-N1   Find the value of s in [N0,N1]\\nthat maximizes the scaffold N50."
    km_er: "length of a k-mer"
    genome_size: "expected genome size. Used to calculate NG50\\nand associated stats [disabled]"
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
  output {
    File out_stdout = stdout()
  }
}