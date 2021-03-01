version 1.0

task Anviexportstate {
  input {
    String? pan_or_profile_db
    File? output_file
    String? state
    Boolean? list_states
  }
  command <<<
    anvi_export_state \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(state) then ("--state " +  '"' + state + '"') else ""} \
      ~{if (list_states) then "--list-states" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes\\ndatabase in appropriate contexts)."
    output_file: "File path to store results."
    state: "The state name to export."
    list_states: "Show available states and exit."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}