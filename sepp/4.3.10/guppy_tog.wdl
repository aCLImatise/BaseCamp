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
      ~{true="--pp" false="" pp} \
      ~{true="-o" false="" specify_filename_write} \
      ~{true="--out-dir" false="" out_dir} \
      ~{true="--prefix" false="" prefix} \
      ~{true="--xml" false="" xml} \
      ~{true="--node-numbers" false="" node_numbers} \
      ~{true="--help" false="" help}
  >>>
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
}