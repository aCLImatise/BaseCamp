version 1.0

task KnockKnockTable {
  input {
    String? group
    String project_directory
  }
  command <<<
    knock-knock table \
      ~{project_directory} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""}
  >>>
  parameter_meta {
    group: "if specified, the single group name to generate tables for; if not specified, all groups will be generated"
    project_directory: "the base directory to store input data, reference annotations, and analysis output for a project"
  }
}