version 1.0

task ReferenceseekerDbInit {
  input {
    String? output_directory_default
    String? db
  }
  command <<<
    referenceseeker_db init \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    output_directory_default: "output directory (default = current working directory)"
    db: "Name of the new ReferenceSeeker database"
  }
}