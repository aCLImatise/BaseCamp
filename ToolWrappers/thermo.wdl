version 1.0

task Thermo {
  input {
    File? output_file_name
    Boolean? chrom
    Boolean? verbose
    Boolean? about
    String target_regions_slash_sequences
  }
  command <<<
    thermo \
      ~{target_regions_slash_sequences} \
      ~{if (output_file_name) then "-output" else ""} \
      ~{if (chrom) then "-chrom" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  parameter_meta {
    output_file_name: "output file name (default: stdout)"
    chrom: "directory with chrom files (FASTA format)"
    verbose: "print more run info"
    about: "print about message"
    target_regions_slash_sequences: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}