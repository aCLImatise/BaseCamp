version 1.0

task GuppyMft {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? unit_ize
    Boolean? transform
    Boolean? help
    String mft
    String place_file
    String? s
  }
  command <<<
    guppy mft \
      ~{mft} \
      ~{place_file} \
      ~{s} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (unit_ize) then "--unitize" else ""} \
      ~{if (transform) then "--transform" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sepp:v4.5.0--py37_0"
  }
  parameter_meta {
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    unit_ize: "Make total unit mass per placerun by multiplying with a scalar."
    transform: "A transform to apply to the read multiplicities before calculating. Options are 'log', 'unit', 'asinh', and 'no_trans'. Default is no transform."
    help: "Display this list of options"
    mft: ""
    place_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}