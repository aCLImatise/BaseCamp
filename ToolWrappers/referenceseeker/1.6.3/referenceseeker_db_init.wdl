version 1.0

task ReferenceseekerDbInit {
  input {
    Directory? output_directory_default
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
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}