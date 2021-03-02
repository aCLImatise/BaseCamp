version 1.0

task HcaDssPutcollection {
  input {
    Array[String] contents
    String? description
    String? details
    String? name
    String? replica
    Int? uuid
  }
  command <<<
    hca dss put_collection \
      ~{if defined(contents) then ("--contents " +  '"' + contents + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(details) then ("--details " +  '"' + details + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contents: "A list of objects describing links to files, bundles, other collections, and metadata fragments that are part of the collection."
    description: "A long description of the collection, formatted in Markdown."
    details: "Supplementary JSON metadata for the collection."
    name: "A short name identifying the collection."
    replica: "Replica to write to."
    uuid: "A RFC4122-compliant ID for the collection."
  }
  output {
    File out_stdout = stdout()
  }
}