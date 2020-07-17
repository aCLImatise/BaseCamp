version 1.0

task AssemblerflowBuild {
  input {
    String? tasks
    String? recipe
    String? name_pipeline_file
    String? provide_name_pipeline
    Boolean? pipeline_only
    Boolean? no_depend_ecy
    Boolean? check_pipeline
    Boolean? detailed_list
    Boolean? short_list
  }
  command <<<
    assemblerflow build \
      ~{if defined(tasks) then ("--tasks " +  '"' + tasks + '"') else ""} \
      ~{if defined(recipe) then ("--recipe " +  '"' + recipe + '"') else ""} \
      ~{if defined(name_pipeline_file) then ("-o " +  '"' + name_pipeline_file + '"') else ""} \
      ~{if defined(provide_name_pipeline) then ("-n " +  '"' + provide_name_pipeline + '"') else ""} \
      ~{true="--pipeline-only" false="" pipeline_only} \
      ~{true="--no-dependecy" false="" no_depend_ecy} \
      ~{true="--check-pipeline" false="" check_pipeline} \
      ~{true="--detailed-list" false="" detailed_list} \
      ~{true="--short-list" false="" short_list}
  >>>
  parameter_meta {
    tasks: "Space separated tasks of the pipeline"
    recipe: "Use one of the available recipes"
    name_pipeline_file: "Name of the pipeline file"
    provide_name_pipeline: "Provide a name for your pipeline."
    pipeline_only: "Write only the pipeline files and not the templates, bin, and lib folders."
    no_depend_ecy: "Do not automatically add dependencies to the pipeline."
    check_pipeline: "Check only the validity of the pipeline string and exit."
    detailed_list: "Print a detailed description for all the currently available processes"
    short_list: "Print a short list of the currently available processes"
  }
}