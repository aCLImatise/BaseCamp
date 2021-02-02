version 1.0

task TaxonomyUtilGetName {
  input {
    String? db
  }
  command <<<
    taxonomy_util get_name \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    db: ""
  }
  output {
    File out_stdout = stdout()
  }
}