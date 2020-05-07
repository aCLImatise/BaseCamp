version 1.0

task AnviDbInfo {
  input {
    String selfSelfKey
    String selfSelfValue
    Boolean justJustDoIt
    String? databaseDatabasePath
  }
  command <<<
    anvi-db-info \
      ~{databaseDatabasePath} \
      ~{if defined(selfSelfKey) then ("--self-key " +  '"' + selfSelfKey + '"') else ""} \
      ~{if defined(selfSelfValue) then ("--self-value " +  '"' + selfSelfValue + '"') else ""} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}