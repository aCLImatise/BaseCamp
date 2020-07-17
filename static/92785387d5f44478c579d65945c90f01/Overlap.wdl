version 1.0

task Overlap {
  input {
    String? kmer_size
    String? min
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
    Boolean? gv
    Boolean? gfa
    Boolean? sam
    File? out
    Boolean? verbose
    String var_17
    String out_dot_fa
    String? option
  }
  command <<<
    Overlap \
      ~{var_17} \
      ~{out_dot_fa} \
      ~{option} \
      ~{if defined(kmer_size) then ("--kmer " +  '"' + kmer_size + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{true="--scaffold" false="" scaffold} \
      ~{true="--no-scaffold" false="" no_scaffold} \
      ~{true="--mask-repeat" false="" mask_repeat} \
      ~{if defined(no_merge_repeat) then ("--no-merge-repeat " +  '"' + no_merge_repeat + '"') else ""} \
      ~{true="--SS" false="" ss} \
      ~{true="--no-SS" false="" no_ss} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{true="--adj" false="" adj} \
      ~{true="--asqg" false="" as_qg} \
      ~{true="--dot" false="" dot} \
      ~{true="--gv" false="" gv} \
      ~{true="--gfa" false="" gfa} \
      ~{true="--sam" false="" sam} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    kmer_size: "k-mer size"
    min: "require a minimum of OVERLAP bases default is 5 bases"
    scaffold: "join contigs with Ns [default]"
    no_scaffold: "do not scaffold"
    mask_repeat: "join contigs at a simple repeat and mask the repeat sequence [default]"
    no_merge_repeat: "'t join contigs at a repeat"
    ss: "expect contigs to be oriented correctly"
    no_ss: "no assumption about contig orientation [default]"
    graph: "write the contig adjacency graph to FILE"
    adj: "output the graph in ADJ format [default]"
    as_qg: "output the graph in ASQG format"
    dot: "output the graph in GraphViz format"
    gv: "output the graph in GraphViz format"
    gfa: "output the graph in GFA format"
    sam: "output the graph in SAM format"
    out: "write result to FILE"
    verbose: "display verbose output"
    var_17: ""
    out_dot_fa: ""
    option: ""
  }
}