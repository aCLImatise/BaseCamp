version 1.0

task Overlap {
  input {
    Int? kmer_size
    Int? min
    Boolean? scaffold
    Boolean? no_scaffold
    Boolean? mask_repeat
    String? no_merge_repeat
    Boolean? ss
    Boolean? no_ss
    File? graph
    Boolean? adj
    Boolean? as_qg
    Boolean? dot
    Boolean? gfa
    Boolean? gfa_one
    Boolean? gfa_two
    Boolean? gv
    Boolean? sam
    File? out
    Boolean? verbose
    String var_19
    String out_dot_fa
  }
  command <<<
    Overlap \
      ~{var_19} \
      ~{out_dot_fa} \
      ~{if defined(kmer_size) then ("--kmer " +  '"' + kmer_size + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if (scaffold) then "--scaffold" else ""} \
      ~{if (no_scaffold) then "--no-scaffold" else ""} \
      ~{if (mask_repeat) then "--mask-repeat" else ""} \
      ~{if defined(no_merge_repeat) then ("--no-merge-repeat " +  '"' + no_merge_repeat + '"') else ""} \
      ~{if (ss) then "--SS" else ""} \
      ~{if (no_ss) then "--no-SS" else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if (adj) then "--adj" else ""} \
      ~{if (as_qg) then "--asqg" else ""} \
      ~{if (dot) then "--dot" else ""} \
      ~{if (gfa) then "--gfa" else ""} \
      ~{if (gfa_one) then "--gfa1" else ""} \
      ~{if (gfa_two) then "--gfa2" else ""} \
      ~{if (gv) then "--gv" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.1--hd403d74_0"
  }
  parameter_meta {
    kmer_size: "k-mer size"
    min: "require a minimum of OVERLAP bases\\ndefault is 5 bases"
    scaffold: "join contigs with Ns [default]"
    no_scaffold: "do not scaffold"
    mask_repeat: "join contigs at a simple repeat and mask\\nthe repeat sequence [default]"
    no_merge_repeat: "'t join contigs at a repeat"
    ss: "expect contigs to be oriented correctly"
    no_ss: "no assumption about contig orientation [default]"
    graph: "write the contig adjacency graph to FILE"
    adj: "output the graph in ADJ format [default]"
    as_qg: "output the graph in ASQG format"
    dot: "output the graph in GraphViz format"
    gfa: "output the graph in GFA1 format"
    gfa_one: "output the graph in GFA1 format"
    gfa_two: "output the graph in GFA2 format"
    gv: "output the graph in GraphViz format"
    sam: "output the graph in SAM format"
    out: "write result to FILE"
    verbose: "display verbose output"
    var_19: ""
    out_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}