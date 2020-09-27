version 1.0

task Abysstodot {
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
    abyss_todot \
      ~{file} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if (adj) then "--adj" else ""} \
      ~{if (as_qg) then "--asqg" else ""} \
      ~{if (dist) then "--dist" else ""} \
      ~{if (dot) then "--dot" else ""} \
      ~{if (gv) then "--gv" else ""} \
      ~{if (dot_mean_cov) then "--dot-meancov" else ""} \
      ~{if (gfa) then "--gfa" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if defined(estimate) then ("--estimate " +  '"' + estimate + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    km_er: "report the mean k-mer coverage, otherwise\\nthe sum k-mer coverage is reported"
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
  output {
    File out_stdout = stdout()
  }
}