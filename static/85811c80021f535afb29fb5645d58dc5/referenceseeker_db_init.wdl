version 1.0

task ReferenceseekerDbInit {
  input {
    String outputOutput
    String dbDb
  }
  command <<<
    referenceseeker_db init \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""}
  >>>
}