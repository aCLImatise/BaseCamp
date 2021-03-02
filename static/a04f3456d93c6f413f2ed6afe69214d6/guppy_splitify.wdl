version 1.0

task GuppySplitify {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? point_mass
    Boolean? pp
    Boolean? kappa
    Boolean? rep_edges
    Boolean? epsilon
    Boolean? help
    String split_if_y
    String place_file
  }
  command <<<
    guppy splitify \
      ~{split_if_y} \
      ~{place_file} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (kappa) then "--kappa" else ""} \
      ~{if (rep_edges) then "--rep-edges" else ""} \
      ~{if (epsilon) then "--epsilon" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    pp: "Use posterior probability for the weight."
    kappa: "Specify the exponent for scaling between weighted and unweighted splitification. default: 1"
    rep_edges: "Cluster neighboring edges that have splitified euclidean distance less than the argument."
    epsilon: "The epsilon to use to determine if a split matrix's column is constant for filtering. default: no filtering"
    help: "Display this list of options"
    split_if_y: ""
    place_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}