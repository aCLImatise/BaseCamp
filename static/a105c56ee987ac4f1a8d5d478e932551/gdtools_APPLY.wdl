version 1.0

task GdtoolsAPPLY {
  input {
    File? output_file_name
    File? format
    File? reference
    String? seq_id
    Boolean? verbose
  }
  command <<<
    gdtools APPLY \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(seq_id) then ("--seq-id " +  '"' + seq_id + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/breseq:0.35.5--h8b12597_0"
  }
  parameter_meta {
    output_file_name: "Output file name (DEFAULT=output.*)"
    format: "Output file format (Options: FASTA, GENBANK, GFF3) (DEFAULT=FASTA)"
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    seq_id: "Sequence ID to keep in output. If this argument is provided, other sequences are deleted after the APPLY. May be provided multiple times."
    verbose: "Verbose mode"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
    File out_format = "${in_format}"
  }
}