version 1.0

task Binreads {
  input {
    Boolean? name_output_file
    Boolean? chrom
    Boolean? verbose
    Boolean? bin
    Boolean? about
    String bed_format_file
  }
  command <<<
    binreads \
      ~{bed_format_file} \
      ~{true="-output" false="" name_output_file} \
      ~{true="-chrom" false="" chrom} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-bin" false="" bin} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    name_output_file: "Name of output file (default: stdout) "
    chrom: "chrom sizes file "
    verbose: "print more run info "
    bin: "size of bins "
    about: "print about message "
    bed_format_file: ""
  }
}