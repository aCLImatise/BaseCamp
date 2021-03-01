version 1.0

task Treerecs {
  input {
    Boolean? verbose
    Boolean? super_verbose
    File? gene_tree
    File? species_tree
    File? alignments
    File? s_map
    Boolean? re_root
    Int? dup_cost
    Int? loss_cost
    String? threshold
    Int? sample_size
    File? tree_index
    Directory? outdir
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
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (super_verbose) then "--superverbose" else ""} \
      ~{if defined(gene_tree) then ("--genetree " +  '"' + gene_tree + '"') else ""} \
      ~{if defined(species_tree) then ("--speciestree " +  '"' + species_tree + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(s_map) then ("--smap " +  '"' + s_map + '"') else ""} \
      ~{if (re_root) then "--reroot" else ""} \
      ~{if defined(dup_cost) then ("--dupcost " +  '"' + dup_cost + '"') else ""} \
      ~{if defined(loss_cost) then ("--losscost " +  '"' + loss_cost + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(sample_size) then ("--sample-size " +  '"' + sample_size + '"') else ""} \
      ~{if defined(tree_index) then ("--tree-index " +  '"' + tree_index + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (parallelize) then "--parallelize" else ""} \
      ~{if (save_map) then "--save-map" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (costs_estimation) then "--costs-estimation" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (case_sensitive) then "--case-sensitive" else ""} \
      ~{if (ale_evaluation) then "--ale-evaluation" else ""} \
      ~{if (output_without_description) then "--output-without-description" else ""} \
      ~{if (f_event) then "--fevent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "verbose mode. Causes Treerecs to print messages about its progress."
    super_verbose: "super-verbose mode. Print even more messages than in verbose mode."
    gene_tree: "input gene tree(s) (supported formats: Newick, NHX or PhyloXML)."
    species_tree: "input species tree (supported formats: Newick, NHX or PhyloXML)."
    alignments: "input alignment file. Must contain:\\n* the pll substitution model to use\\n* the paths to the multiple alignments (one per gene-tree)"
    s_map: "input gene-to-species mapping file."
    re_root: "find the best root according to the reconciliation cost."
    dup_cost: "specify gene duplication cost (default value = 2)."
    loss_cost: "specify gene loss cost (default value = 1)."
    threshold: "| quantiles[N]\\nspecify branch support thresholds to use while contracting gene trees.\\n* EXPRESSION can be any colon-separated combination of the following:\\nnone: no contraction\\nall: contract all branches. The tree collapses into a single polytomy\\nVALUE: contract branches with support strictly lower than VALUE\\nVALUE+epsilon (short VALUE+e): contract branches with support equal to\\nor lower than VALUE\\n* quantiles[N]: use several threshold values: none, all, and the\\nquantiles dividing the branch supports into N groups"
    sample_size: "size of the tree sampling (default value = 1)."
    tree_index: "only consider the VALUE-th gene tree in the gene tree file."
    outdir: "output directory (default: treerecs_output)."
    output_format: "output format(s): newick(default), nhx, phyloxml, recphyloxml or svg.\\nrepeat option or use a colon-separated list of formats to get multiple\\noutput"
    force: "force possible overwrite of existing files."
    sep: "specify separator character for species names embedded in gene names\\n(default = '_')."
    prefix: "/N\\nspecify whether the species_name is a prefix of gene_name\\ndefault = N)."
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
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}