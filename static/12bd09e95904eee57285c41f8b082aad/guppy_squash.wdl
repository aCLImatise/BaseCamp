version 1.0

task GuppySquash {
  input {
    Boolean? point_mass
    Boolean? pp
    Boolean? reference_package_path
    Boolean? seed
    Boolean? min_fat
    Boolean? total_width
    Boolean? width_factor
    Boolean? node_numbers
    Boolean? out_dir
    Boolean? prefix
    Boolean? exponent_kr_value
    Boolean? normalize
    Boolean? bootstrap
    Boolean? tax_cluster
    Boolean? pre_round
    Boolean? help
    String squash
    String place_files
  }
  command <<<
    guppy squash \
      ~{squash} \
      ~{place_files} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (min_fat) then "--min-fat" else ""} \
      ~{if (total_width) then "--total-width" else ""} \
      ~{if (width_factor) then "--width-factor" else ""} \
      ~{if (node_numbers) then "--node-numbers" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (exponent_kr_value) then "-p" else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if (bootstrap) then "--bootstrap" else ""} \
      ~{if (tax_cluster) then "--tax-cluster" else ""} \
      ~{if (pre_round) then "--pre-round" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sepp:v4.5.0--py37_0"
  }
  parameter_meta {
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    pp: "Use posterior probability for the weight."
    reference_package_path: "Reference package path."
    seed: "Set the random seed, an integer > 0. Default is 1."
    min_fat: "The minimum branch length for fattened edges (to increase their visibility). To turn off set to 0. Default: 0.01"
    total_width: "Set the total pixel width for all of the branches of the tree. Default: 300"
    width_factor: "Override total-width by directly setting the number of pixels per unit of thing displayed."
    node_numbers: "Put the node numbers in where the bootstraps usually go."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    exponent_kr_value: "Exponent for KR integration, i.e. value of p in Z_p. Default 1."
    normalize: "Divide KR by a given value. Legal arguments are \\\"tree-length\\\"."
    bootstrap: "the number of bootstrap replicates to run"
    tax_cluster: "Perform taxonomic clustering rather than phylogenetic.Specify \\\"unit\\\" or \\\"inv\\\" for the two different modes."
    pre_round: "Apply rounding with 3 sig figs and cutoff 0.01 to each\\nplacerun before clustering"
    help: "Display this list of options"
    squash: ""
    place_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}