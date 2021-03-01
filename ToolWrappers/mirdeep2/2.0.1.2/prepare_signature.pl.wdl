version 1.0

task PrepareSignaturepl {
  input {
    File? fasta_file_influence
    Boolean? output_progress_screen
  }
  command <<<
    prepare_signature_pl \
      ~{if defined(fasta_file_influence) then ("-a " +  '"' + fasta_file_influence + '"') else ""} \
      ~{if (output_progress_screen) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fasta_file_influence: "Fasta file with the sequences of known mature miRNAs for the species.\\nThese sequences will not influence the miRDeep scoring, but will\\nsubsequently make it easy to estimate sensitivity of the run."
    output_progress_screen: "Output progress to screen"
  }
  output {
    File out_stdout = stdout()
  }
}