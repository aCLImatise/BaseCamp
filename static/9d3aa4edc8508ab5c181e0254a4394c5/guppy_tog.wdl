version 1.0

task GuppyTog {
  input {
    Boolean? pp
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? xml
    Boolean? node_numbers
    Boolean? help
    String tog
    String place_file
    String? s
  }
  command <<<
    guppy tog \
      ~{tog} \
      ~{place_file} \
      ~{s} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (xml) then "--xml" else ""} \
      ~{if (node_numbers) then "--node-numbers" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pp: "Use posterior probability for the weight."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    xml: "Write phyloXML (with colors) for all visualizations."
    node_numbers: "Put the node numbers in where the bootstraps usually go."
    help: "Display this list of options"
    tog: ""
    place_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}