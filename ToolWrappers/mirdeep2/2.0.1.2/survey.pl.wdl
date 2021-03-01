version 1.0

task Surveypl {
  input {
    File? file_outputted_controls
    File? mature_mirna_fasta
    File? signature_file
    Int? read_stack_height
  }
  command <<<
    survey_pl \
      ~{if defined(file_outputted_controls) then ("-a " +  '"' + file_outputted_controls + '"') else ""} \
      ~{if defined(mature_mirna_fasta) then ("-b " +  '"' + mature_mirna_fasta + '"') else ""} \
      ~{if defined(signature_file) then ("-c " +  '"' + signature_file + '"') else ""} \
      ~{if defined(read_stack_height) then ("-d " +  '"' + read_stack_height + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_outputted_controls: "file outputted by controls"
    mature_mirna_fasta: "mature miRNA fasta reference file for the species"
    signature_file: "signature file"
    read_stack_height: "read stack height necessary for triggering excision"
  }
  output {
    File out_stdout = stdout()
  }
}