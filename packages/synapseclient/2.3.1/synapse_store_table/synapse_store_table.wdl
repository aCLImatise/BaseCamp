version 1.0

task SynapseStoretable {
  input {
    String? name
    Int? parentid
    File? csv
  }
  command <<<
    synapse store_table \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(parentid) then ("--parentid " +  '"' + parentid + '"') else ""} \
      ~{if defined(csv) then ("--csv " +  '"' + csv + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/synapseclient:2.3.1--pyh5e36f6f_0"
  }
  parameter_meta {
    name: "Name of Table"
    parentid: "Synapse ID of project"
    csv: "Path to csv"
  }
  output {
    File out_stdout = stdout()
  }
}