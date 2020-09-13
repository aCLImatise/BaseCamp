version 1.0

task Treemix {
  input {
    String? this_help
    Boolean? _input_file
    Boolean? modelcovgz
    Boolean? number_snps_block
    String? global
    Boolean? tf
    Boolean? number_migration_add
    Boolean? root
    Boolean? read_graph_previous
    String? se
    String? micro
    String? bootstrap
    Boolean? cor_mig
    Int? noss
    Boolean? seed
    Boolean? n_warn
  }
  command <<<
    treemix \
      ~{if defined(this_help) then ("-h " +  '"' + this_help + '"') else ""} \
      ~{if (_input_file) then "-i" else ""} \
      ~{if (modelcovgz) then "-o" else ""} \
      ~{if (number_snps_block) then "-k" else ""} \
      ~{if defined(global) then ("-global " +  '"' + global + '"') else ""} \
      ~{if (tf) then "-tf" else ""} \
      ~{if (number_migration_add) then "-m" else ""} \
      ~{if (root) then "-root" else ""} \
      ~{if (read_graph_previous) then "-g" else ""} \
      ~{if defined(se) then ("-se " +  '"' + se + '"') else ""} \
      ~{if defined(micro) then ("-micro " +  '"' + micro + '"') else ""} \
      ~{if defined(bootstrap) then ("-bootstrap " +  '"' + bootstrap + '"') else ""} \
      ~{if (cor_mig) then "-cor_mig" else ""} \
      ~{if defined(noss) then ("-noss " +  '"' + noss + '"') else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (n_warn) then "-n_warn" else ""}
  >>>
  parameter_meta {
    this_help: "this help"
    _input_file: "[file name] input file"
    modelcovgz: "[stem] output stem (will be [stem].treeout.gz, [stem].cov.gz, [stem].modelcov.gz)"
    number_snps_block: "[int] number of SNPs per block for estimation of covariance matrix (1)"
    global: "a round of global rearrangements after adding all populations"
    tf: "[file name] Read the tree topology from a file, rather than estimating it"
    number_migration_add: "[int] number of migration edges to add (0)"
    root: "[string] comma-delimited list of populations to set on one side of the root (for migration)"
    read_graph_previous: "[vertices file name] [edges file name] read the graph from a previous TreeMix run"
    se: "standard errors of migration weights (computationally expensive)"
    micro: "data"
    bootstrap: "a single bootstrap replicate"
    cor_mig: "[file] list of known migration events to include (also use -climb)"
    noss: "off sample size correction"
    seed: "[int] Set the seed for random number generation"
    n_warn: "[int] Display first N warnings"
  }
  output {
    File out_stdout = stdout()
  }
}