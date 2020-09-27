version 1.0

task AtlasPlace {
  input {
    String? tree
    Boolean? q
    Boolean? f
    String? db_name
  }
  command <<<
    atlas place \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if (q) then "-q" else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if defined(db_name) then ("--db_name " +  '"' + db_name + '"') else ""}
  >>>
  parameter_meta {
    tree: ""
    q: ""
    f: ""
    db_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}