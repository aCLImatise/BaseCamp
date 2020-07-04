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
      ~{true="--point-mass" false="" point_mass} \
      ~{true="--pp" false="" pp} \
      ~{true="-o" false="" specify_filename_write} \
      ~{true="--out-dir" false="" out_dir} \
      ~{true="--prefix" false="" prefix} \
      ~{true="--min-fat" false="" min_fat} \
      ~{true="--total-width" false="" total_width} \
      ~{true="--width-factor" false="" width_factor} \
      ~{true="--node-numbers" false="" node_numbers} \
      ~{true="--xml" false="" xml} \
      ~{true="--help" false="" help}
  >>>
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
}