version 1.0

task GuppyBary {
  input {
    Boolean? reference_package_path
    Boolean? point_mass
    Boolean? pp
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? node_numbers
    Boolean? help
    String bary
    String place_file
    String? s
  }
  command <<<
    guppy bary \
      ~{bary} \
      ~{place_file} \
      ~{s} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (node_numbers) then "--node-numbers" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    reference_package_path: "Reference package path."
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    pp: "Use posterior probability for the weight."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    node_numbers: "Put the node numbers in where the bootstraps usually go."
    help: "Display this list of options"
    bary: ""
    place_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}