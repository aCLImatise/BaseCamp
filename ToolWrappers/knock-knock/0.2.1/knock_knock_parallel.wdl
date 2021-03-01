version 1.0

task KnockknockParallel {
  input {
    String? group
    String? conditions
    String project_directory
    String max_procs
  }
  command <<<
    knock_knock parallel \
      ~{project_directory} \
      ~{max_procs} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(conditions) then ("--conditions " +  '"' + conditions + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    group: "if specified, the single group name to process; if not\\nspecified, all groups will be processed"
    conditions: "if specified, conditions that samples must satisfy to\\nbe processed, given as yaml; if not specified, all\\nsamples will be processed"
    project_directory: "the base directory to store input data, reference\\nannotations, and analysis output for a project"
    max_procs: "maximum number of samples to process at once"
  }
  output {
    File out_stdout = stdout()
  }
}