version 1.0

task Anviimportstate {
  input {
    String? pan_or_profile_db
    File? json_serializable_anvio
    String? name
    String _more_anviimportstate
  }
  command <<<
    anvi_import_state \
      ~{_more_anviimportstate} \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if defined(json_serializable_anvio) then ("--state " +  '"' + json_serializable_anvio + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes\\ndatabase in appropriate contexts). (default: None)"
    json_serializable_anvio: "JSON serializable anvi'o state file. (default: None)"
    name: "State name. (default: None)"
    _more_anviimportstate: "🍺 More on `anvi-import-state`:"
  }
  output {
    File out_stdout = stdout()
  }
}