version 1.0

task GuppyDistmat {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? help
    String dist_mat
    String place_file
    String? s
  }
  command <<<
    guppy distmat \
      ~{dist_mat} \
      ~{place_file} \
      ~{s} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    help: "Display this list of options"
    dist_mat: ""
    place_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}