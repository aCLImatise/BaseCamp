version 1.0

task Extractseq {
  input {
    Boolean? name_output_file
    Boolean? chrom
    Boolean? verbose
    Boolean? about
    String bed_format_regions
  }
  command <<<
    extractseq \
      ~{bed_format_regions} \
      ~{true="-output" false="" name_output_file} \
      ~{true="-chrom" false="" chrom} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    name_output_file: "Name of output file (default: stdout) "
    chrom: "directory with chrom files (FASTA format) "
    verbose: "print more run info "
    about: "print about message "
    bed_format_regions: ""
  }
}