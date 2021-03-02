version 1.0

task AssemblerflowBuild {
  input {
    String? tasks
    String? recipe
    File? name_pipeline_file
    String? provide_name_your
    Boolean? pipeline_only
    Boolean? no_depend_ecy
    Boolean? check_pipeline
    Boolean? short_list
    String exit_dot
  }
  command <<<
    assemblerflow build \
      ~{exit_dot} \
      ~{if defined(tasks) then ("--tasks " +  '"' + tasks + '"') else ""} \
      ~{if defined(recipe) then ("--recipe " +  '"' + recipe + '"') else ""} \
      ~{if defined(name_pipeline_file) then ("-o " +  '"' + name_pipeline_file + '"') else ""} \
      ~{if defined(provide_name_your) then ("-n " +  '"' + provide_name_your + '"') else ""} \
      ~{if (pipeline_only) then "--pipeline-only" else ""} \
      ~{if (no_depend_ecy) then "--no-dependecy" else ""} \
      ~{if (check_pipeline) then "--check-pipeline" else ""} \
      ~{if (short_list) then "--short-list" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tasks: "Space separated tasks of the pipeline"
    recipe: "Use one of the available recipes"
    name_pipeline_file: "Name of the pipeline file"
    provide_name_your: "Provide a name for your pipeline."
    pipeline_only: "Write only the pipeline files and not the templates,\\nbin, and lib folders."
    no_depend_ecy: "Do not automatically add dependencies to the pipeline."
    check_pipeline: "Check only the validity of the pipeline string and"
    short_list: "Print a short list of the currently available\\nprocesses\\n"
    exit_dot: "-L, --detailed-list   Print a detailed description for all the currently"
  }
  output {
    File out_stdout = stdout()
  }
}