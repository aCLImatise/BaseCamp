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
    Boolean? gfa_one
    Boolean? gfa_two
    Boolean? sam
    String? estimate
    String? add_complements
    Boolean? verbose
    File? var_file
  }
  command <<<
    abyss_todot \
      ~{var_file} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if (adj) then "--adj" else ""} \
      ~{if (as_qg) then "--asqg" else ""} \
      ~{if (dist) then "--dist" else ""} \
      ~{if (dot) then "--dot" else ""} \
      ~{if (gv) then "--gv" else ""} \
      ~{if (dot_mean_cov) then "--dot-meancov" else ""} \
      ~{if (gfa) then "--gfa" else ""} \
      ~{if (gfa_one) then "--gfa1" else ""} \
      ~{if (gfa_two) then "--gfa2" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if defined(estimate) then ("--estimate " +  '"' + estimate + '"') else ""} \
      ~{if defined(add_complements) then ("--add-complements " +  '"' + add_complements + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0"
  }
  parameter_meta {
    km_er: "report the mean k-mer coverage, otherwise\\nthe sum k-mer coverage is reported"
    adj: "output the graph in adj format"
    as_qg: "output the graph in asqg format"
    dist: "output the graph in dist format"
    dot: "output the graph in GraphViz format [default]"
    gv: "output the graph in GraphViz format"
    dot_mean_cov: "same as above but give the mean coverage"
    gfa: "output the graph in GFA1 format"
    gfa_one: "output the graph in GFA1 format"
    gfa_two: "output the graph in GFA2 format"
    sam: "output the graph in SAM format"
    estimate: "distance estimates"
    add_complements: "missing complementary edges"
    verbose: "display verbose output"
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}