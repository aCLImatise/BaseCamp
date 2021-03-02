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
    docker: "quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0"
  }
  parameter_meta {
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}