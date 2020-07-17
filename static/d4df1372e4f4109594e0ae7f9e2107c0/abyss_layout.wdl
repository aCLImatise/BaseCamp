version 1.0

task AbyssLayout {
  input {
    String? min_length
    String? min_overlap
    String? km_er
    File? out
    File? graph
    Boolean? tred
    Boolean? no_tred
    Boolean? ss
    Boolean? no_ss
    Boolean? verbose
    String overlap
  }
  command <<<
    abyss-layout \
      ~{overlap} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{true="--tred" false="" tred} \
      ~{true="--no-tred" false="" no_tred} \
      ~{true="--SS" false="" ss} \
      ~{true="--no-SS" false="" no_ss} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    min_length: "minimum sequence length [0]"
    min_overlap: "minimum overlap [0]"
    km_er: "length of a k-mer"
    out: "write the paths to FILE"
    graph: "write the graph to FILE"
    tred: "remove transitive edges"
    no_tred: "do not remove transitive edges [default]"
    ss: "expect contigs to be oriented correctly"
    no_ss: "no assumption about contig orientation [default]"
    verbose: "display verbose output"
    overlap: "the sequence overlap graph"
  }
}