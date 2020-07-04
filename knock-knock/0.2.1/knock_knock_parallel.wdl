version 1.0

task KnockKnockParallel {
  input {
    String? group
    String? conditions
    String project_directory
    Int max_procs
  }
  command <<<
    knock-knock parallel \
      ~{project_directory} \
      ~{max_procs} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(conditions) then ("--conditions " +  '"' + conditions + '"') else ""}
  >>>
  parameter_meta {
    group: ""
    conditions: ""
    project_directory: "the base directory to store input data, reference annotations, and analysis output for a project"
    max_procs: "maximum number of samples to process at once"
  }
}