version 1.0

task AtlasPlace {
  input {
    String? db_name
    Boolean? f
    Boolean? q
    String? tree
    String sample
  }
  command <<<
    atlas place \
      ~{sample} \
      ~{if defined(db_name) then ("--db_name " +  '"' + db_name + '"') else ""} \
      ~{true="-f" false="" f} \
      ~{true="-q" false="" q} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""}
  >>>
  parameter_meta {
    db_name: ""
    f: ""
    q: ""
    tree: ""
    sample: "sample id"
  }
}