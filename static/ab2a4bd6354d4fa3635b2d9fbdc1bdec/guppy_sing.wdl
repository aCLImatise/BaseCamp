version 1.0

task GuppySing {
  input {
    Boolean? point_mass
    Boolean? pp
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? min_fat
    Boolean? total_width
    Boolean? width_factor
    Boolean? node_numbers
    Boolean? xml
    Boolean? help
    String sing
    String place_file
    String? s
  }
  command <<<
    guppy sing \
      ~{sing} \
      ~{place_file} \
      ~{s} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (min_fat) then "--min-fat" else ""} \
      ~{if (total_width) then "--total-width" else ""} \
      ~{if (width_factor) then "--width-factor" else ""} \
      ~{if (node_numbers) then "--node-numbers" else ""} \
      ~{if (xml) then "--xml" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sepp:4.5.1--py37_0"
  }
  parameter_meta {
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    pp: "Use posterior probability for the weight."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    min_fat: "The minimum branch length for fattened edges (to increase their visibility). To turn off set to 0. Default: 0.01"
    total_width: "Set the total pixel width for all of the branches of the tree. Default: 300"
    width_factor: "Override total-width by directly setting the number of pixels per unit of thing displayed."
    node_numbers: "Put the node numbers in where the bootstraps usually go."
    xml: "Write phyloXML (with colors) for all visualizations."
    help: "Display this list of options"
    sing: ""
    place_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}