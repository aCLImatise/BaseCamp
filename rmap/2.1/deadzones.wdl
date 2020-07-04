version 1.0

task Deadzones {
  input {
    Boolean? name_output_file
    Boolean? km_er
    Boolean? prefix
    Boolean? bisulfite
    Boolean? ag_wild
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
      ~{true="-bisulfite" false="" bisulfite} \
      ~{true="-ag-wild" false="" ag_wild} \
      ~{true="-suffix" false="" suffix} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    name_output_file: "Name of output file (default: stdout) "
    km_er: "Width of k-mers "
    prefix: "prefix length "
    bisulfite: "get bisulfite deadzones "
    ag_wild: "A/G wildcard for bisulfite "
    suffix: "suffix of FASTA files (assumes -c indicates dir) "
    verbose: "print more run information "
    about: "print about message "
    one_or_more_fast_a_chrom_files: ""
  }
}