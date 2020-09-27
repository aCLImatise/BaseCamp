version 1.0

task MentalistDbInfo {
  input {
    String? db
  }
  command <<<
    mentalist db_info \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    db: "MentaLiST kmer database"
  }
  output {
    File out_stdout = stdout()
  }
}