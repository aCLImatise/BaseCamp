version 1.0

task AtlasPlace {
  input {
    String? db_name
    Boolean? force
    Boolean? quiet
    String? tree
    File? searchable_samples
  }
  command <<<
    atlas place \
      ~{if defined(db_name) then ("--db_name " +  '"' + db_name + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(searchable_samples) then ("--searchable_samples " +  '"' + searchable_samples + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db_name: "db_name"
    force: "force"
    quiet: "do not output warnings to stderr"
    tree: "tree"
    searchable_samples: "list of samples (file)"
  }
  output {
    File out_stdout = stdout()
  }
}