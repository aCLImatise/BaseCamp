version 1.0

task GuppyFat {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? point_mass
    Boolean? pp
    Boolean? reference_package_path
    Boolean? min_fat
    Boolean? total_width
    Boolean? width_factor
    Boolean? node_numbers
    Boolean? average
    Boolean? ed_pl
    Boolean? help
    String fat
    String place_file
    String? s
  }
  command <<<
    guppy fat \
      ~{fat} \
      ~{place_file} \
      ~{s} \
      ~{true="-o" false="" specify_filename_write} \
      ~{true="--out-dir" false="" out_dir} \
      ~{true="--prefix" false="" prefix} \
      ~{true="--point-mass" false="" point_mass} \
      ~{true="--pp" false="" pp} \
      ~{true="-c" false="" reference_package_path} \
      ~{true="--min-fat" false="" min_fat} \
      ~{true="--total-width" false="" total_width} \
      ~{true="--width-factor" false="" width_factor} \
      ~{true="--node-numbers" false="" node_numbers} \
      ~{true="--average" false="" average} \
      ~{true="--edpl" false="" ed_pl} \
      ~{true="--help" false="" help}
  >>>
  parameter_meta {
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    pp: "Use posterior probability for the weight."
    reference_package_path: "Reference package path."
    min_fat: "The minimum branch length for fattened edges (to increase their visibility). To turn off set to 0. Default: 0.01"
    total_width: "Set the total pixel width for all of the branches of the tree. Default: 300"
    width_factor: "Override total-width by directly setting the number of pixels per unit of thing displayed."
    node_numbers: "Put the node numbers in where the bootstraps usually go."
    average: "Average all input placefiles together."
    ed_pl: "Specify the maximum EDPL for an EDPL tree."
    help: "Display this list of options"
    fat: ""
    place_file: ""
    s: ""
  }
}