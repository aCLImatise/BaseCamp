version 1.0

task ArrowGroupsGetOrganismPermissions {
  input {
    String group
  }
  command <<<
    arrow groups get_organism_permissions \
      ~{group}
  >>>
  parameter_meta {
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}