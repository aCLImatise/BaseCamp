version 1.0

task AnviDbInfo {
  input {
    String? self_key
    String? self_value
    Boolean? just_do_it
    String database_path
  }
  command <<<
    anvi-db-info \
      ~{database_path} \
      ~{if defined(self_key) then ("--self-key " +  '"' + self_key + '"') else ""} \
      ~{if defined(self_value) then ("--self-value " +  '"' + self_value + '"') else ""} \
      ~{true="--just-do-it" false="" just_do_it}
  >>>
  parameter_meta {
    self_key: "The key you wish to set or change."
    self_value: "The value you wish to set for the self key."
    just_do_it: "Don't bother me with questions or warnings, just do it."
    database_path: "An anvi'o database for pan, profile, contigs, or auxiliary data"
  }
}