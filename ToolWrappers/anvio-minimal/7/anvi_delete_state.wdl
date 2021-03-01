version 1.0

task Anvideletestate {
  input {
    String? pan_or_profile_db
    String? state
    Boolean? list_states
  }
  command <<<
    anvi_delete_state \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if defined(state) then ("--state " +  '"' + state + '"') else ""} \
      ~{if (list_states) then "--list-states" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes\\ndatabase in appropriate contexts). (default: None)"
    state: ":( (default: None)"
    list_states: "Show available states and exit. (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}