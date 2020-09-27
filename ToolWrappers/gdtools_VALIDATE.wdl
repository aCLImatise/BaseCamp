version 1.0

task GdtoolsVALIDATE {
  input {
    File? reference
    String? verbose
  }
  command <<<
    gdtools VALIDATE \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. If provided, will validate seq_ids and positions in the GD file using these.  Option may be provided multiple times for multiple files. (OPTIONAL)"
    verbose: "Verbose mode. Outputs additional information about progress. (OPTIONAL)"
  }
  output {
    File out_stdout = stdout()
  }
}