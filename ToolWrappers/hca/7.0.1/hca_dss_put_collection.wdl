version 1.0

task HcaDssPutcollection {
  input {
    String? description
    String? replica
    Array[String] contents
  }
  command <<<
    hca dss put_collection \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(contents) then ("--contents " +  '"' + contents + '"') else ""}
  >>>
  parameter_meta {
    description: ""
    replica: ""
    contents: "A list of objects describing links to files, bundles, other collections, and metadata fragments that are part of the collection."
  }
  output {
    File out_stdout = stdout()
  }
}