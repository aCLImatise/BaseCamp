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
    docker: "None"
  }
  parameter_meta {
    id: "Id of entity in Synapse to be moved."
    parentid: "Synapse ID of project or folder where file/folder will\\nbe moved\\n"
  }
  output {
    File out_stdout = stdout()
  }
}