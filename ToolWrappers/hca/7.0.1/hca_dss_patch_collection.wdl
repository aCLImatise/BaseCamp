version 1.0

task HcaDssPatchcollection {
  input {
    String? add_contents
    String? description
    String? details
    String? name
    String? remove_contents
    Int? uuid
    String? replica
  }
  command <<<
    hca dss patch_collection \
      ~{if defined(add_contents) then ("--add-contents " +  '"' + add_contents + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(details) then ("--details " +  '"' + details + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(remove_contents) then ("--remove-contents " +  '"' + remove_contents + '"') else ""} \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    add_contents: "List of new items to add to the collection. Items are de-duplicated (if an identical item is already present in the collection or given multiple times, it will only be added once)."
    description: "New description for the collection."
    details: "New details for the collection."
    name: "New name for the collection."
    remove_contents: "List of items to remove from the collection. Items must match exactly to be removed. Items not found in the collection are ignored."
    uuid: "A RFC4122-compliant ID of the collection to update."
    replica: "Replica to update the collection on. Updates are propagated to other replicas."
  }
  output {
    File out_stdout = stdout()
  }
}