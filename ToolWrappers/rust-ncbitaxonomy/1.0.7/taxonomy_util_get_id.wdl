version 1.0

task TaxonomyUtilGetId {
  input {
    String? db
  }
  command <<<
    taxonomy_util get_id \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}