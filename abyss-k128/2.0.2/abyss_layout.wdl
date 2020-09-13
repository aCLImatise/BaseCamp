version 1.0

task Abysslayout {
  input {
    Int? min_length
    Int? min_overlap
    Int? km_er
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
    abyss_layout \
      ~{overlap} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if (tred) then "--tred" else ""} \
      ~{if (no_tred) then "--no-tred" else ""} \
      ~{if (ss) then "--SS" else ""} \
      ~{if (no_ss) then "--no-SS" else ""} \
      ~{if (verbose) then "--verbose" else ""}
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
  output {
    File out_stdout = stdout()
  }
}