version 1.0

task Anviimportstate {
  input {
    String? pan_or_profile_db
    File? state
    String? name
  }
  command <<<
    anvi_import_state \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if defined(state) then ("--state " +  '"' + state + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes\\ndatabase in appropriate contexts)."
    state: "JSON serializable anvi'o state file."
    name: "State name.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}