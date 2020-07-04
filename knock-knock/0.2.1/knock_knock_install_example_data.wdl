version 1.0

task KnockKnockInstallExampleData {
  input {
    String project_directory
  }
  command <<<
    knock-knock install-example-data \
      ~{project_directory}
  >>>
  parameter_meta {
    project_directory: "directory to install example data"
  }
}