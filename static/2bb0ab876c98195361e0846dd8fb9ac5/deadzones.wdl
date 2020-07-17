version 1.0

task Deadzones {
  input {
    Boolean? name_output_file
    Boolean? km_er
    Boolean? prefix
    Boolean? suffix
    Boolean? verbose
    Boolean? about
    String one_or_more_fast_a_chrom_files
  }
  command <<<
    deadzones \
      ~{one_or_more_fast_a_chrom_files} \
      ~{true="-output" false="" name_output_file} \
      ~{true="-kmer" false="" km_er} \
      ~{true="-prefix" false="" prefix} \
      ~{true="-suffix" false="" suffix} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    name_output_file: "Name of output file (default: stdout) "
    km_er: "Width of k-mers "
    prefix: "prefix length (default 5) "
    suffix: "suffix of FASTA files (assumes -c indicates dir) "
    verbose: "print more run information "
    about: "print about message "
    one_or_more_fast_a_chrom_files: ""
  }
}