version 1.0

task ArrowGroupsGetOrganismPermissions {
  input {
    String group
  }
  command <<<
    arrow groups get_organism_permissions \
      ~{group}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0"
  }
  parameter_meta {
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}