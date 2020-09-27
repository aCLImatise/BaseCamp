version 1.0

task RpprReroot {
  input {
    Boolean? reference_package_path
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? help
    String re_root
  }
  command <<<
    rppr reroot \
      ~{re_root} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    reference_package_path: "Reference package path. Required."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    help: "Display this list of options"
    re_root: ""
  }
  output {
    File out_stdout = stdout()
  }
}