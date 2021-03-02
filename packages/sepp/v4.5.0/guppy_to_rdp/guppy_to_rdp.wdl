version 1.0

task GuppyToRdp {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? reference_package_path
    Boolean? ranks_include_annotated
    Boolean? help
    String to_rdp
  }
  command <<<
    guppy to_rdp \
      ~{to_rdp} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (reference_package_path) then "-c" else ""} \
      ~{if (ranks_include_annotated) then "-r" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sepp:v4.5.0--py37_0"
  }
  parameter_meta {
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames. Required."
    reference_package_path: "Reference package path. Required."
    ranks_include_annotated: "Ranks to include in the annotated fasta file. Can be comma-separated."
    help: "Display this list of options"
    to_rdp: ""
  }
  output {
    File out_stdout = stdout()
  }
}