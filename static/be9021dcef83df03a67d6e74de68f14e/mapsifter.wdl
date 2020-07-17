version 1.0

task Mapsifter {
  input {
    Boolean? name_output_file
    Boolean? verbose
    Boolean? exclude
    Boolean? upper
    Boolean? lower
    Boolean? target
    Boolean? about
    String bed_format_file
  }
  command <<<
    mapsifter \
      ~{bed_format_file} \
      ~{true="-output" false="" name_output_file} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-exclude" false="" exclude} \
      ~{true="-upper" false="" upper} \
      ~{true="-lower" false="" lower} \
      ~{true="-target" false="" target} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    name_output_file: "Name of output file (default: stdout) "
    verbose: "print more run info "
    exclude: "exclude contained "
    upper: "upper bound on scores "
    lower: "lower bound on scores "
    target: "target regions file "
    about: "print about message "
    bed_format_file: ""
  }
}