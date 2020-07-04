version 1.0

task Sigoverlap {
  input {
    Boolean? name_output_file
    Boolean? verbose
    Boolean? target
    Boolean? size
    Boolean? about
    String bed_format_file
  }
  command <<<
    sigoverlap \
      ~{bed_format_file} \
      ~{true="-output" false="" name_output_file} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-target" false="" target} \
      ~{true="-size" false="" size} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    name_output_file: "Name of output file (default: stdout) "
    verbose: "print more run info "
    target: "target regions file "
    size: "genome size "
    about: "print about message "
    bed_format_file: ""
  }
}