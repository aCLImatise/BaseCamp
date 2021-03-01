version 1.0

task GuppyKrHeat {
  input {
    Boolean? point_mass
    Boolean? pp
    Boolean? reference_package_path
    Boolean? exponent_kr_value
    Boolean? min_fat
    Boolean? total_width
    Boolean? width_factor
    Boolean? node_numbers
    Boolean? gray_black
    Boolean? min_width
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? help
    String heat
    Int place_file_one
    Int place_file_two
  }
  command <<<
    guppy kr_heat \
      ~{heat} \
      ~{place_file_one} \
      ~{place_file_two} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (exponent_kr_value) then "-p" else ""} \
      ~{if (min_fat) then "--min-fat" else ""} \
      ~{if (total_width) then "--total-width" else ""} \
      ~{if (width_factor) then "--width-factor" else ""} \
      ~{if (node_numbers) then "--node-numbers" else ""} \
      ~{if (gray_black) then "--gray-black" else ""} \
      ~{if (min_width) then "--min-width" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    pp: "Use posterior probability for the weight."
    reference_package_path: "Reference package path."
    exponent_kr_value: "Exponent for KR integration, i.e. value of p in Z_p. Default 1."
    min_fat: "The minimum branch length for fattened edges (to increase their visibility). To turn off set to 0. Default: 0.01"
    total_width: "Set the total pixel width for all of the branches of the tree. Default: 300"
    width_factor: "Override total-width by directly setting the number of pixels per unit of thing displayed."
    node_numbers: "Put the node numbers in where the bootstraps usually go."
    gray_black: "Use gray/black in place of red/blue to signify the sign of the coefficient for that edge."
    min_width: "Specify the minimum width for a branch to be colored and thickened. Default is 1."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    help: "Display this list of options"
    heat: ""
    place_file_one: ""
    place_file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}