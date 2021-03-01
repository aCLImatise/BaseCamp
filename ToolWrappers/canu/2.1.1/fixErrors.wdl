version 1.0

task FixErrors {
  input {
    Boolean? seqstore_path_sequence
    File? red
    Boolean? bgnidendid_output_only
    File? outfasta_write_fasta
  }
  command <<<
    fixErrors \
      ~{if (seqstore_path_sequence) then "-S" else ""} \
      ~{if defined(red) then ("-red " +  '"' + red + '"') else ""} \
      ~{if (bgnidendid_output_only) then "-r" else ""} \
      ~{if (outfasta_write_fasta) then "-O" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    seqstore_path_sequence: "seqStore           path to a sequence store"
    red: "path to the output .red file from findErrors"
    bgnidendid_output_only: "bgnID-endID        output only reads bgnID through endID, inclusive"
    outfasta_write_fasta: "out.fasta[.gz]     write FASTA to file 'out.fasta, optionally compressing"
  }
  output {
    File out_stdout = stdout()
    File out_red = "${in_red}"
    File out_outfasta_write_fasta = "${in_outfasta_write_fasta}"
  }
}