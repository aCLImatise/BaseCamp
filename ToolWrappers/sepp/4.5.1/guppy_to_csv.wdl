version 1.0

task GuppyToCsv {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? no_csv
    Boolean? point_mass
    Boolean? pp
    Boolean? help
    String to_csv
    String place_file
    String? s
  }
  command <<<
    guppy to_csv \
      ~{to_csv} \
      ~{place_file} \
      ~{s} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (no_csv) then "--no-csv" else ""} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sepp:4.5.1--py37_0"
  }
  parameter_meta {
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    no_csv: "Output the results as a padded matrix instead of csv."
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    pp: "Use posterior probability for the weight."
    help: "Display this list of options"
    to_csv: ""
    place_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}