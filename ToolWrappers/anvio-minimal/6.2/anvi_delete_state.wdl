version 1.0

task Anvideletestate {
  input {
    String? pan_or_profile_db
    Boolean? list_states
    String? s
  }
  command <<<
    anvi_delete_state \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if (list_states) then "--list-states" else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes\\ndatabase in appropriate contexts)."
    list_states: "Show available states and exit."
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}