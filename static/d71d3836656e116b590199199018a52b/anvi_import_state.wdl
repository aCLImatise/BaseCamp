version 1.0

task AnviImportState {
  input {
    String? pan_or_profile_db
    String? state
    String? name
  }
  command <<<
    anvi-import-state \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if defined(state) then ("--state " +  '"' + state + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes database in appropriate contexts)."
    state: "JSON serializable anvi'o state file."
    name: "State name."
  }
}