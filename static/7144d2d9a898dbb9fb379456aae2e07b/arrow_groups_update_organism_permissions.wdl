version 1.0

task ArrowGroupsUpdateOrganismPermissions {
  input {
    Boolean? administrate
    Boolean? write
    Boolean? read
    Boolean? export
    String group
    String organism_name
  }
  command <<<
    arrow groups update_organism_permissions \
      ~{group} \
      ~{organism_name} \
      ~{if (administrate) then "--administrate" else ""} \
      ~{if (write) then "--write" else ""} \
      ~{if (read) then "--read" else ""} \
      ~{if (export) then "--export" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0"
  }
  parameter_meta {
    administrate: "Should the group have administrate privileges"
    write: "Should the group have write privileges"
    read: "Should the group have read privileges"
    export: "Should the group have export privileges"
    group: ""
    organism_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}