version 1.0

task FlowcraftBuild {
  input {
    String? tasks
    String? recipe
    File? name_pipeline_file
    String? provide_name_your
    Boolean? merge_params
    Boolean? pipeline_only
    Boolean? no_depend_ecy
    Boolean? check_pipeline
    Boolean? component_list_short
    Boolean? recipe_list
    Boolean? recipe_list_short
    Boolean? export_directives
    Boolean? fetch_tags
    String exit_dot
    String recipes
    String option_dot
  }
  command <<<
    flowcraft build \
      ~{exit_dot} \
      ~{recipes} \
      ~{option_dot} \
      ~{if defined(tasks) then ("--tasks " +  '"' + tasks + '"') else ""} \
      ~{if defined(recipe) then ("--recipe " +  '"' + recipe + '"') else ""} \
      ~{if defined(name_pipeline_file) then ("-o " +  '"' + name_pipeline_file + '"') else ""} \
      ~{if defined(provide_name_your) then ("-n " +  '"' + provide_name_your + '"') else ""} \
      ~{if (merge_params) then "--merge-params" else ""} \
      ~{if (pipeline_only) then "--pipeline-only" else ""} \
      ~{if (no_depend_ecy) then "--no-dependecy" else ""} \
      ~{if (check_pipeline) then "--check-pipeline" else ""} \
      ~{if (component_list_short) then "--component-list-short" else ""} \
      ~{if (recipe_list) then "--recipe-list" else ""} \
      ~{if (recipe_list_short) then "--recipe-list-short" else ""} \
      ~{if (export_directives) then "--export-directives" else ""} \
      ~{if (fetch_tags) then "--fetch-tags" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tasks: "Space separated tasks of the pipeline"
    recipe: "Use one of the available recipes"
    name_pipeline_file: "Name of the pipeline file"
    provide_name_your: "Provide a name for your pipeline."
    merge_params: "Merges identical parameters from multiple components\\ninto the same one. Otherwise, the parameters will be\\nseparated and unique to each component."
    pipeline_only: "Write only the pipeline files and not the templates,\\nbin, and lib folders."
    no_depend_ecy: "Do not automatically add dependencies to the pipeline."
    check_pipeline: "Check only the validity of the pipeline string and"
    component_list_short: "Print a short list of the currently available\\nprocesses."
    recipe_list: "Print a short list of the currently available recipes."
    recipe_list_short: "Print a condensed list of the currently available"
    export_directives: "Only export the directives for the provided components\\n(via -t option) in JSON format to stdout. No pipeline\\nwill be generated with this option."
    fetch_tags: "Allows to fetch all docker tags for the components\\nlisted with the -t flag.\\n"
    exit_dot: "-L, --component-list  Print a detailed description for all the currently"
    recipes: "-cr, --check-recipe   Check tasks that the recipe contain and their flow."
    option_dot: "--export-params       Only export the parameters for the provided components"
  }
  output {
    File out_stdout = stdout()
  }
}