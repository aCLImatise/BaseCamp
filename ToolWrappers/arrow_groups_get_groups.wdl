version 1.0

task ArrowGroupsGetGroups {
  input {
    String? name
  }
  command <<<
    arrow groups get_groups \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  parameter_meta {
    name: "Only return group(s) with given name"
  }
  output {
    File out_stdout = stdout()
  }
}