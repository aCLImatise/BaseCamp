version 1.0

task GdtoolsAPPLY {
  input {
    File? output_file_name
    File? format
    File? reference
    Boolean? verbose
  }
  command <<<
    gdtools APPLY \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    output_file_name: "Output file name (DEFAULT=output.*)"
    format: "Output file format (Options: FASTA, GFF3) (DEFAULT=FASTA)"
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    verbose: "Verbose mode"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
    File out_format = "${in_format}"
  }
}