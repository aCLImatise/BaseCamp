version 1.0

task KnockknockParallel {
  input {
    String? conditions
    String? group
    String project_directory
    String max_procs
  }
  command <<<
    knock_knock parallel \
      ~{project_directory} \
      ~{max_procs} \
      ~{if defined(conditions) then ("--conditions " +  '"' + conditions + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""}
  >>>
  parameter_meta {
    conditions: ""
    group: ""
    project_directory: "the base directory to store input data, reference\\nannotations, and analysis output for a project"
    max_procs: "maximum number of samples to process at once"
  }
  output {
    File out_stdout = stdout()
  }
}