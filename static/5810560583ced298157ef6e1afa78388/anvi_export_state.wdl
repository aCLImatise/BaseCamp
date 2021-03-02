version 1.0

task Anviexportstate {
  input {
    String? pan_or_profile_db
    File? output_file
    String? state
    Boolean? list_states
    String state_json
  }
  command <<<
    anvi_export_state \
      ~{state_json} \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(state) then ("--state " +  '"' + state + '"') else ""} \
      ~{if (list_states) then "--list-states" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes\\ndatabase in appropriate contexts). (default: None)"
    output_file: "File path to store results. (default: None)"
    state: "The state name to export. (default: None)"
    list_states: "Show available states and exit. (default: False)"
    state_json: "🍺 More on `anvi-export-state`:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}