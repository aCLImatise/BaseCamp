version 1.0

task GuppyClassifyRdp {
  input {
    Boolean? csv
    Boolean? reference_package_path
    Boolean? sqlite
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? help
    String classify_rdp
    String rdp_output_file
    String? s
  }
  command <<<
    guppy classify_rdp \
      ~{classify_rdp} \
      ~{rdp_output_file} \
      ~{s} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (sqlite) then "--sqlite" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    csv: "Write .class.csv files containing CSV data."
    reference_package_path: "Reference package path. Required."
    sqlite: "Specify the database file to use."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames. Required."
    help: "Display this list of options"
    classify_rdp: ""
    rdp_output_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}