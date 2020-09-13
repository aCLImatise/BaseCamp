version 1.0

task AtlasPlace {
  input {
    String? db_name
    Boolean? force
    Boolean? quiet
    String? tree
    File? searchable_samples
    Boolean? no_cache
  }
  command <<<
    atlas place \
      ~{if defined(db_name) then ("--db_name " +  '"' + db_name + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(searchable_samples) then ("--searchable_samples " +  '"' + searchable_samples + '"') else ""} \
      ~{if (no_cache) then "--no-cache" else ""}
  >>>
  parameter_meta {
    db_name: "db_name"
    force: "force"
    quiet: "do not output warnings to stderr"
    tree: "tree"
    searchable_samples: "list of samples (file)"
    no_cache: ""
  }
  output {
    File out_stdout = stdout()
  }
}