version 1.0

task AbyssTodot {
  input {
    String? km_er
    Boolean? adj
    Boolean? as_qg
    Boolean? dist
    Boolean? dot
    Boolean? gv
    Boolean? dot_mean_cov
    Boolean? gfa
    Boolean? sam
    String? estimate
    Boolean? verbose
    File? file
  }
  command <<<
    abyss-todot \
      ~{file} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{true="--adj" false="" adj} \
      ~{true="--asqg" false="" as_qg} \
      ~{true="--dist" false="" dist} \
      ~{true="--dot" false="" dot} \
      ~{true="--gv" false="" gv} \
      ~{true="--dot-meancov" false="" dot_mean_cov} \
      ~{true="--gfa" false="" gfa} \
      ~{true="--sam" false="" sam} \
      ~{if defined(estimate) then ("--estimate " +  '"' + estimate + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    km_er: "report the mean k-mer coverage, otherwise the sum k-mer coverage is reported"
    adj: "output the graph in adj format"
    as_qg: "output the graph in asqg format"
    dist: "output the graph in dist format"
    dot: "output the graph in GraphViz format [default]"
    gv: "output the graph in GraphViz format"
    dot_mean_cov: "same as above but give the mean coverage"
    gfa: "output the graph in GFA format"
    sam: "output the graph in SAM format"
    estimate: "distance estimates"
    verbose: "display verbose output"
    file: ""
  }
}