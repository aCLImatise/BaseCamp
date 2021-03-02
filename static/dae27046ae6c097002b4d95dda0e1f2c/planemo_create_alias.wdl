version 1.0

task PlanemoCreateAlias {
  input {
    String? name_of_alias
    String? profile
    String obj
  }
  command <<<
    planemo create_alias \
      ~{obj} \
      ~{if defined(name_of_alias) then ("--alias " +  '"' + name_of_alias + '"') else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    name_of_alias: "Name of an alias."
    profile: "Name of profile (created with the profile_create command) to\\nuse with this command.  [required]"
    obj: ""
  }
  output {
    File out_stdout = stdout()
  }
}