version 1.0

task Deadzones {
  input {
    File? name_output_file
    Boolean? km_er
    Boolean? prefix
    Boolean? bisulfite
    Boolean? ag_wild
    Boolean? suffix
    Boolean? verbose
    Boolean? about
    Int one_or_more_fast_a_chrom_files
  }
  command <<<
    deadzones \
      ~{one_or_more_fast_a_chrom_files} \
      ~{if (name_output_file) then "-output" else ""} \
      ~{if (km_er) then "-kmer" else ""} \
      ~{if (prefix) then "-prefix" else ""} \
      ~{if (bisulfite) then "-bisulfite" else ""} \
      ~{if (ag_wild) then "-ag-wild" else ""} \
      ~{if (suffix) then "-suffix" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  parameter_meta {
    name_output_file: "Name of output file (default: stdout)"
    km_er: "Width of k-mers"
    prefix: "prefix length"
    bisulfite: "get bisulfite deadzones"
    ag_wild: "A/G wildcard for bisulfite"
    suffix: "suffix of FASTA files (assumes -c indicates dir)"
    verbose: "print more run information"
    about: "print about message"
    one_or_more_fast_a_chrom_files: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}