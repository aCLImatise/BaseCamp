version 1.0

task ArrowGroupsGetGroups {
  input {
    String? name
  }
  command <<<
    arrow groups get_groups \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0"
  }
  parameter_meta {
    name: "Only return group(s) with given name"
  }
  output {
    File out_stdout = stdout()
  }
}