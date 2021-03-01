version 1.0

task MentaLiSTjlDbInfo {
  input {
    String? db
  }
  command <<<
    MentaLiST_jl db_info \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "MentaLiST kmer database"
  }
  output {
    File out_stdout = stdout()
  }
}