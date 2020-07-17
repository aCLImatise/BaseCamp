version 1.0

task GuppyHeat {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? reference_package_path
    Boolean? min_fat
    Boolean? total_width
    Boolean? width_factor
    Boolean? node_numbers
    Boolean? gray_black
    Boolean? min_width
    Boolean? help
    String heat
    String matrix_dot_csv
  }
  command <<<
    guppy heat \
      ~{heat} \
      ~{matrix_dot_csv} \
      ~{true="-o" false="" specify_filename_write} \
      ~{true="--out-dir" false="" out_dir} \
      ~{true="--prefix" false="" prefix} \
      ~{true="-c" false="" reference_package_path} \
      ~{true="--min-fat" false="" min_fat} \
      ~{true="--total-width" false="" total_width} \
      ~{true="--width-factor" false="" width_factor} \
      ~{true="--node-numbers" false="" node_numbers} \
      ~{true="--gray-black" false="" gray_black} \
      ~{true="--min-width" false="" min_width} \
      ~{true="--help" false="" help}
  >>>
  parameter_meta {
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    reference_package_path: "Reference package path. Required."
    min_fat: "The minimum branch length for fattened edges (to increase their visibility). To turn off set to 0. Default: 0.01"
    total_width: "Set the total pixel width for all of the branches of the tree. Default: 300"
    width_factor: "Override total-width by directly setting the number of pixels per unit of thing displayed."
    node_numbers: "Put the node numbers in where the bootstraps usually go."
    gray_black: "Use gray/black in place of red/blue to signify the sign of the coefficient for that edge."
    min_width: "Specify the minimum width for a branch to be colored and thickened. Default is 1."
    help: "Display this list of options"
    heat: ""
    matrix_dot_csv: ""
  }
}