version 1.0

task KnockKnockBuildTargets {
  input {
    String project_directory
  }
  command <<<
    knock-knock build-targets \
      ~{project_directory}
  >>>
  parameter_meta {
    project_directory: "the base directory to store input data, reference annotations, and analysis output for a project"
  }
}