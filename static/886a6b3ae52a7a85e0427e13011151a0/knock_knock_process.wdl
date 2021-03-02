version 1.0

task KnockknockProcess {
  input {
    Boolean? progress
    String? stages
    String project_directory
    String group
    String sample
  }
  command <<<
    knock_knock process \
      ~{project_directory} \
      ~{group} \
      ~{sample} \
      ~{if (progress) then "--progress" else ""} \
      ~{if defined(stages) then ("--stages " +  '"' + stages + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    progress: "show progress bars"
    stages: ""
    project_directory: "the base directory to store input data, reference\\nannotations, and analysis output for a project"
    group: "group name"
    sample: "sample name"
  }
  output {
    File out_stdout = stdout()
  }
}