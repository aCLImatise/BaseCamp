version 1.0

task H5mkgrp {
  input {
    Boolean? latest
    Boolean? parents
    Boolean? verbose
    String options
  }
  command <<<
    h5mkgrp \
      ~{options} \
      ~{if (latest) then "--latest" else ""} \
      ~{if (parents) then "--parents" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    latest: "Use latest version of file format to create groups"
    parents: "No error if existing, make parent groups as needed"
    verbose: "Print information about OBJECTS and OPTIONS"
    options: "-h, --help         Print a usage message and exit"
  }
  output {
    File out_stdout = stdout()
  }
}