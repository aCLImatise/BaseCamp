version 1.0

task GuppyTrim {
  input {
    Boolean? point_mass
    Boolean? pp
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? min_path_mass
    Boolean? discarded
    Boolean? rewrite_discarded_mass
    Boolean? help
    String trim
    String place_file
    String? s
  }
  command <<<
    guppy trim \
      ~{trim} \
      ~{place_file} \
      ~{s} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (min_path_mass) then "--min-path-mass" else ""} \
      ~{if (discarded) then "--discarded" else ""} \
      ~{if (rewrite_discarded_mass) then "--rewrite-discarded-mass" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    pp: "Use posterior probability for the weight."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    min_path_mass: "The minimum mass which must be on the path to a leaf to keep it. default: 0.001"
    discarded: "A file to write discarded pqueries to."
    rewrite_discarded_mass: "Move placements which were on discarded leaves to the nearest non-discarded node."
    help: "Display this list of options"
    trim: ""
    place_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}