version 1.0

task AnanseInfluence {
  input {
    File? target
    File? de_genes
    File? outfile
    File? source
    String? edges
    File? expression
    Boolean? plot
    String? n_core
    String an_anse
    String subcommand
    String influence
  }
  command <<<
    ananse influence \
      ~{an_anse} \
      ~{subcommand} \
      ~{influence} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(de_genes) then ("--degenes " +  '"' + de_genes + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if defined(edges) then ("--edges " +  '"' + edges + '"') else ""} \
      ~{if defined(expression) then ("--expression " +  '"' + expression + '"') else ""} \
      ~{true="--plot" false="" plot} \
      ~{if defined(n_core) then ("--ncore " +  '"' + n_core + '"') else ""}
  >>>
  parameter_meta {
    target: "network in second cell"
    de_genes: "DE genes file"
    outfile: "Output file"
    source: "network in first cell"
    edges: "Number of top edges used"
    expression: "Expression scores in first cell"
    plot: "Create influence score plot."
    n_core: "Number of core used"
    an_anse: ""
    subcommand: ""
    influence: ""
  }
}