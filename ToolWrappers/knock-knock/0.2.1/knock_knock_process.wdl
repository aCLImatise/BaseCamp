version 1.0

task KnockknockProcess {
  input {
    String? stages
    Boolean? progress
    String project_directory
    String group
    String sample
  }
  command <<<
    knock_knock process \
      ~{project_directory} \
      ~{group} \
      ~{sample} \
      ~{if defined(stages) then ("--stages " +  '"' + stages + '"') else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  parameter_meta {
    stages: ""
    progress: ""
    project_directory: "the base directory to store input data, reference\\nannotations, and analysis output for a project"
    group: "group name"
    sample: "sample name"
  }
  output {
    File out_stdout = stdout()
  }
}