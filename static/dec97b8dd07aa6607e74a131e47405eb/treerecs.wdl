version 1.0

task Treerecs {
  input {
    String? sample_size
    String? tree_index
    String? outdir
    String? output_format
    Boolean? force
    String? sep
    String? prefix
    Boolean? parallelize
    Boolean? save_map
    Boolean? quiet
    Boolean? costs_estimation
    Boolean? info
    Boolean? case_sensitive
    Boolean? ale_evaluation
    Boolean? output_without_description
    Boolean? f_event
  }
  command <<<
    treerecs \
      ~{if defined(sample_size) then ("--sample-size " +  '"' + sample_size + '"') else ""} \
      ~{if defined(tree_index) then ("--tree-index " +  '"' + tree_index + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--parallelize" false="" parallelize} \
      ~{true="--save-map" false="" save_map} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--costs-estimation" false="" costs_estimation} \
      ~{true="--info" false="" info} \
      ~{true="--case-sensitive" false="" case_sensitive} \
      ~{true="--ale-evaluation" false="" ale_evaluation} \
      ~{true="--output-without-description" false="" output_without_description} \
      ~{true="--fevent" false="" f_event}
  >>>
  parameter_meta {
    sample_size: "size of the tree sampling (default value = 1)."
    tree_index: "only consider the VALUE-th gene tree in the gene tree file."
    outdir: "output directory (default: treerecs_output)."
    output_format: "output format(s): newick(default), nhx, phyloxml, recphyloxml or svg. repeat option or use a colon-separated list of formats to get multiple output"
    force: "force possible overwrite of existing files."
    sep: "specify separator character for species names embedded in gene names (default = '_')."
    prefix: "specify whether the species_name is a prefix of gene_name default = N)."
    parallelize: "run in parallel if possible."
    save_map: "save map(s) used during execution."
    quiet: "silent mode (no print, no progression bar)."
    costs_estimation: "estimate duplication and loss costs."
    info: "print informations about genetree(s) with a branch support diagram."
    case_sensitive: "use case sensitive mapping."
    ale_evaluation: "compute ALE log likelihood for each solution."
    output_without_description: "strip output from gene tree descriptions."
    f_event: "create a file that summarizes orthology/paralogy relationships."
  }
}