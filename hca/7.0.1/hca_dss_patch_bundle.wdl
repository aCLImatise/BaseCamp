version 1.0

task HcaDssPatchBundle {
  input {
    String? add_files
    String? remove_files
    String? uuid
    String? replica
  }
  command <<<
    hca dss patch-bundle \
      ~{if defined(add_files) then ("--add-files " +  '"' + add_files + '"') else ""} \
      ~{if defined(remove_files) then ("--remove-files " +  '"' + remove_files + '"') else ""} \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  parameter_meta {
    add_files: "List of new files to add to the bundle. File names must be unique."
    remove_files: "List of files to remove from the bundle. Files must match exactly to be removed. Files not found in the bundle are ignored."
    uuid: "A RFC4122-compliant ID of the bundle to update."
    replica: "Replica to update the bundle on. Updates are propagated to other replicas."
  }
}