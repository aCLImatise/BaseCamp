version 1.0

task GuppyOgraph {
  input {
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? pp
    Boolean? help
    String o_graph
    String place_file
  }
  command <<<
    guppy ograph \
      ~{o_graph} \
      ~{place_file} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
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
    pp: "Use posterior probability for the weight."
    help: "Display this list of options"
    o_graph: ""
    place_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}