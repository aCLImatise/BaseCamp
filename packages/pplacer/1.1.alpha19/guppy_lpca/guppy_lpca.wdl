version 1.0

task GuppyLpca {
  input {
    Boolean? out_dir
    Boolean? prefix
    Boolean? point_mass
    Boolean? pp
    Boolean? reference_package_path
    Boolean? min_fat
    Boolean? total_width
    Boolean? width_factor
    Boolean? node_numbers
    Boolean? gray_black
    Boolean? min_width
    Boolean? write_n
    Boolean? som
    Boolean? scale
    Boolean? s_ymmv
    Boolean? raw_eval
    Boolean? kappa
    Boolean? rep_edges
    Boolean? epsilon
    Boolean? help
    String lpc_a
    String place_files
  }
  command <<<
    guppy lpca \
      ~{lpc_a} \
      ~{place_files} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (min_fat) then "--min-fat" else ""} \
      ~{if (total_width) then "--total-width" else ""} \
      ~{if (width_factor) then "--width-factor" else ""} \
      ~{if (node_numbers) then "--node-numbers" else ""} \
      ~{if (gray_black) then "--gray-black" else ""} \
      ~{if (min_width) then "--min-width" else ""} \
      ~{if (write_n) then "--write-n" else ""} \
      ~{if (som) then "--som" else ""} \
      ~{if (scale) then "--scale" else ""} \
      ~{if (s_ymmv) then "--symmv" else ""} \
      ~{if (raw_eval) then "--raw-eval" else ""} \
      ~{if (kappa) then "--kappa" else ""} \
      ~{if (rep_edges) then "--rep-edges" else ""} \
      ~{if (epsilon) then "--epsilon" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames. Required."
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    pp: "Use posterior probability for the weight."
    reference_package_path: "Reference package path."
    min_fat: "The minimum branch length for fattened edges (to increase their visibility). To turn off set to 0. Default: 0.01"
    total_width: "Set the total pixel width for all of the branches of the tree. Default: 300"
    width_factor: "Override total-width by directly setting the number of pixels per unit of thing displayed."
    node_numbers: "Put the node numbers in where the bootstraps usually go."
    gray_black: "Use gray/black in place of red/blue to signify the sign of the coefficient for that edge."
    min_width: "Specify the minimum width for a branch to be colored and thickened. Default is 1."
    write_n: "The number of principal coordinates to calculate (default is 5)."
    som: "The number of dimensions to rotate for support overlap minimization(default is 0; options are 0, 2, 3)."
    scale: "Scale variances to one before performing principal components."
    s_ymmv: "Use a complete eigendecomposition rather than power iteration."
    raw_eval: "Output the raw eigenvalue rather than the fraction of variance."
    kappa: "Specify the exponent for scaling between weighted and unweighted splitification. default: 1"
    rep_edges: "Cluster neighboring edges that have splitified euclidean distance less than the argument."
    epsilon: "The epsilon to use to determine if a split matrix's column is constant for filtering. default: 1e-05"
    help: "Display this list of options"
    lpc_a: ""
    place_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}