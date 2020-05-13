version 1.0

task AbricateGetDb {
  input {
    Boolean debugDebug
    String dbDbDir
    String dbDb
    Boolean forceForce
  }
  command <<<
    abricate-get_db \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(dbDbDir) then ("--dbdir " +  '"' + dbDbDir + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}