version 1.0

task PlanemoListAlias {
  input {
    String? profile
  }
  command <<<
    planemo list_alias \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    profile: "Name of profile (created with the profile_create command) to\\nuse with this command.  [required]"
  }
  output {
    File out_stdout = stdout()
  }
}