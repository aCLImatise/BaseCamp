version 1.0

task Genewalk {
  input {
    Directory? project
    File? genes
    String? id_type
    String? stage
    Directory? base_folder
    String? network_source
    File? network_file
    Int? nproc
    Int? n_reps_graph
    Int? n_reps_null
    Float? alpha_fdr
    Int? dim_rep
    Directory? save_dw
    Int? random_seed
  }
  command <<<
    genewalk \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(id_type) then ("--id_type " +  '"' + id_type + '"') else ""} \
      ~{if defined(stage) then ("--stage " +  '"' + stage + '"') else ""} \
      ~{if defined(base_folder) then ("--base_folder " +  '"' + base_folder + '"') else ""} \
      ~{if defined(network_source) then ("--network_source " +  '"' + network_source + '"') else ""} \
      ~{if defined(network_file) then ("--network_file " +  '"' + network_file + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(n_reps_graph) then ("--nreps_graph " +  '"' + n_reps_graph + '"') else ""} \
      ~{if defined(n_reps_null) then ("--nreps_null " +  '"' + n_reps_null + '"') else ""} \
      ~{if defined(alpha_fdr) then ("--alpha_fdr " +  '"' + alpha_fdr + '"') else ""} \
      ~{if defined(dim_rep) then ("--dim_rep " +  '"' + dim_rep + '"') else ""} \
      ~{if defined(save_dw) then ("--save_dw " +  '"' + save_dw + '"') else ""} \
      ~{if defined(random_seed) then ("--random_seed " +  '"' + random_seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/genewalk:1.5.2--pyh3252c3a_0"
  }
  parameter_meta {
    project: "A name for the project which determines the folder\\nwithin the base folder in which the intermediate and\\nfinal results are written. Must contain only\\ncharacters that are valid in folder names."
    genes: "Path to a text file with a list of genes of interest,\\nfor exampledifferentially expressed genes. The type of\\ngene identifiers used in the text file are provided in\\nthe id_type argument."
    id_type: "The type of gene IDs provided in the text file in the\\ngenes argument. Possible values are: hgnc_symbol,\\nhgnc_id, ensembl_id, mgi_id,rgd_id, entrez_human,\\nentrez_mouse, and custom. If custom, a network_source\\nof sif_annot or sif_full must be used."
    stage: "The stage of processing to run. Default: all"
    base_folder: "The base folder used to store GeneWalk temporary and\\nresult files for a given project. Default:\\n/root/genewalk"
    network_source: "The source of the network to be used. Possible values\\nare: pc, indra, edge_list, sif, sif_annot, and\\nsif_full. In case of indra, edge_list, sif, sif_annot,\\nand sif_full, the network_file argument must be\\nspecified. Default: pc"
    network_file: "If network_source is indra, this argument points to a\\nPython pickle file in which a list of INDRA Statements\\nconstituting the network is contained. In case\\nnetwork_source is edge_list, sif, sif_annot or\\nsif_full, the network_file argument points to a text\\nfile representing the network. See README section\\nCustom input networks for full description of file\\nformat requirements."
    nproc: "The number of processors to use in a multiprocessing\\nenvironment. Default: 1"
    n_reps_graph: "The number of repeats to run when calculating node\\nvectors on the GeneWalk graph. Default: 3"
    n_reps_null: "The number of repeats to run when calculating node\\nvectors on the random network graphs for constructing\\nthe null distribution. Default: 3"
    alpha_fdr: "The false discovery rate to use when outputting the\\nfinal statistics table. If 1 (default), all\\nsimilarities are output, otherwise only the ones whose\\nfalse discovery rate are below this parameter are\\nincluded. For visualization a default value of 0.1 for\\nboth global and gene-specific plots is used. Lower\\nthis value to increase the stringency of the regulator\\ngene selection procedure. Default: 1"
    dim_rep: "Dimension of vector representations (embeddings). This\\nvalue should only be increased if genewalk with the\\ndefault value generates no statistically significant\\nresults, for instance with very large (>2500) input\\ngene lists. Alternatively, it can be decreased in case\\n(nearly) all GO annotations are significant, for\\ninstance with very short gene lists. Default: 8"
    save_dw: "If True, the full DeepWalk object for each repeat is\\nsaved in the project folder. This can be useful for\\ndebugging but the files are typically very large.\\nDefault: False"
    random_seed: "If provided, the random number generator is seeded\\nwith the given value. This should only be used if the\\ngoal is to deterministically reproduce a prior result\\nobtained with the same random seed.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}