version 1.0

task KnockknockTable {
  input {
    String? group
    String project_directory
  }
  command <<<
    knock_knock table \
      ~{project_directory} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""}
  >>>
  parameter_meta {
    group: "if specified, the single group name to generate tables\\nfor; if not specified, all groups will be generated\\n"
    project_directory: "the base directory to store input data, reference\\nannotations, and analysis output for a project"
  }
  output {
    File out_stdout = stdout()
  }
}