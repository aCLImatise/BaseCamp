version 1.0

task PlanemoDeleteAlias {
  input {
    String? name_of_alias
    String? profile
  }
  command <<<
    planemo delete_alias \
      ~{if defined(name_of_alias) then ("--alias " +  '"' + name_of_alias + '"') else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    name_of_alias: "Name of an alias.  [required]"
    profile: "Name of profile (created with the profile_create command) to\\nuse with this command.  [required]"
  }
  output {
    File out_stdout = stdout()
  }
}