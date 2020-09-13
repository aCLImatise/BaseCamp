version 1.0

task Extractseq {
  input {
    File? name_output_file
    Boolean? chrom
    Boolean? verbose
    Boolean? about
    String bed_format_regions
  }
  command <<<
    extractseq \
      ~{bed_format_regions} \
      ~{if (name_output_file) then "-output" else ""} \
      ~{if (chrom) then "-chrom" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  parameter_meta {
    name_output_file: "Name of output file (default: stdout)"
    chrom: "directory with chrom files (FASTA format)"
    verbose: "print more run info"
    about: "print about message"
    bed_format_regions: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}