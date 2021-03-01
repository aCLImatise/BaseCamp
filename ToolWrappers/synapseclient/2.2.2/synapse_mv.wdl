version 1.0

task SynapseMv {
  input {
    Int? id
    Int? parentid
  }
  command <<<
    synapse mv \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(parentid) then ("--parentid " +  '"' + parentid + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/synapseclient:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    id: "Id of entity in Synapse to be moved."
    parentid: "Synapse ID of project or folder where file/folder will\\nbe moved\\n"
  }
  output {
    File out_stdout = stdout()
  }
}