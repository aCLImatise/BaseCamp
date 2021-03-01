version 1.0

task KnockknockBuildtargets {
  input {
    String project_directory
  }
  command <<<
    knock_knock build_targets \
      ~{project_directory}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    project_directory: "the base directory to store input data, reference\\nannotations, and analysis output for a project"
  }
  output {
    File out_stdout = stdout()
  }
}