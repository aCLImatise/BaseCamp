version 1.0

task PrepareSignaturepl {
  input {
    File? fasta_file_sequences
    Boolean? output_progress_screen
  }
  command <<<
    prepare_signature_pl \
      ~{if defined(fasta_file_sequences) then ("-a " +  '"' + fasta_file_sequences + '"') else ""} \
      ~{if (output_progress_screen) then "-b" else ""}
  >>>
  parameter_meta {
    fasta_file_sequences: "Fasta file with the sequences of known mature miRNAs for the species.\\nThese sequences will not influence the miRDeep scoring, but will\\nsubsequently make it easy to estimate sensitivity of the run."
    output_progress_screen: "Output progress to screen"
  }
  output {
    File out_stdout = stdout()
  }
}