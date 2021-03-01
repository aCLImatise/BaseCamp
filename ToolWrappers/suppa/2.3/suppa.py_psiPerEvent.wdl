version 1.0

task SuppapyPsiPerEvent {
  input {
    File? ioe_file
    File? expression_file
    File? output_file
    String? total_filter
    Boolean? save_tpm_events
    String? mode
  }
  command <<<
    suppa_py psiPerEvent \
      ~{if defined(ioe_file) then ("--ioe-file " +  '"' + ioe_file + '"') else ""} \
      ~{if defined(expression_file) then ("--expression-file " +  '"' + expression_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(total_filter) then ("--total-filter " +  '"' + total_filter + '"') else ""} \
      ~{if (save_tpm_events) then "--save_tpm_events" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ioe_file: "Input file with the event-transcripts equivalence\\n(.ioe format)."
    expression_file: "Input transcript expression file."
    output_file: "Output psi file."
    total_filter: "Minimum total expression of the transcripts involved\\nin the event."
    save_tpm_events: "Boolean. If True, save the TPM of the events in an\\nexternal file (Default: False)."
    mode: "to choose from DEBUG, INFO, WARNING, ERROR and\\nCRITICAL\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}