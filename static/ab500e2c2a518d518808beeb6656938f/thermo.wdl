version 1.0

task Thermo {
  input {
    Boolean? output_file_name
    Boolean? chrom
    Boolean? verbose
    Boolean? about
    String target_regions_slash_sequences
  }
  command <<<
    thermo \
      ~{target_regions_slash_sequences} \
      ~{true="-output" false="" output_file_name} \
      ~{true="-chrom" false="" chrom} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    output_file_name: "output file name (default: stdout) "
    chrom: "directory with chrom files (FASTA format) "
    verbose: "print more run info "
    about: "print about message "
    target_regions_slash_sequences: ""
  }
}