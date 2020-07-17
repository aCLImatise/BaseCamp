version 1.0

task KnockKnockProcess {
  input {
    Boolean? progress
    String? stages
    String project_directory
    String group
    String sample
  }
  command <<<
    knock-knock process \
      ~{project_directory} \
      ~{group} \
      ~{sample} \
      ~{true="--progress" false="" progress} \
      ~{if defined(stages) then ("--stages " +  '"' + stages + '"') else ""}
  >>>
  parameter_meta {
    progress: ""
    stages: ""
    project_directory: "the base directory to store input data, reference annotations, and analysis output for a project"
    group: "group name"
    sample: "sample name"
  }
}