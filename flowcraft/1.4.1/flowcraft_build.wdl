version 1.0

task FlowcraftBuild {
  input {
    String? tasks
    String? recipe
    String? name_pipeline_file
    String? provide_name_pipeline
    Boolean? merge_params
    Boolean? pipeline_only
    Boolean? no_depend_ecy
    Boolean? check_pipeline
    Boolean? component_list
    Boolean? component_list_short
    Boolean? recipe_list
    Boolean? recipe_list_short
    Boolean? check_recipe
    Boolean? export_params
    Boolean? export_directives
    Boolean? fetch_tags
  }
  command <<<
    flowcraft build \
      ~{if defined(tasks) then ("--tasks " +  '"' + tasks + '"') else ""} \
      ~{if defined(recipe) then ("--recipe " +  '"' + recipe + '"') else ""} \
      ~{if defined(name_pipeline_file) then ("-o " +  '"' + name_pipeline_file + '"') else ""} \
      ~{if defined(provide_name_pipeline) then ("-n " +  '"' + provide_name_pipeline + '"') else ""} \
      ~{true="--merge-params" false="" merge_params} \
      ~{true="--pipeline-only" false="" pipeline_only} \
      ~{true="--no-dependecy" false="" no_depend_ecy} \
      ~{true="--check-pipeline" false="" check_pipeline} \
      ~{true="--component-list" false="" component_list} \
      ~{true="--component-list-short" false="" component_list_short} \
      ~{true="--recipe-list" false="" recipe_list} \
      ~{true="--recipe-list-short" false="" recipe_list_short} \
      ~{true="--check-recipe" false="" check_recipe} \
      ~{true="--export-params" false="" export_params} \
      ~{true="--export-directives" false="" export_directives} \
      ~{true="--fetch-tags" false="" fetch_tags}
  >>>
  parameter_meta {
    tasks: "Space separated tasks of the pipeline"
    recipe: "Use one of the available recipes"
    name_pipeline_file: "Name of the pipeline file"
    provide_name_pipeline: "Provide a name for your pipeline."
    merge_params: "Merges identical parameters from multiple components into the same one. Otherwise, the parameters will be separated and unique to each component."
    pipeline_only: "Write only the pipeline files and not the templates, bin, and lib folders."
    no_depend_ecy: "Do not automatically add dependencies to the pipeline."
    check_pipeline: "Check only the validity of the pipeline string and exit."
    component_list: "Print a detailed description for all the currently available processes."
    component_list_short: "Print a short list of the currently available processes."
    recipe_list: "Print a short list of the currently available recipes."
    recipe_list_short: "Print a condensed list of the currently available recipes"
    check_recipe: "Check tasks that the recipe contain and their flow. This option might be useful if a user wants to change some components of a given recipe, by using the -t option."
    export_params: "Only export the parameters for the provided components (via -t option) in JSON format to stdout. No pipeline will be generated with this option."
    export_directives: "Only export the directives for the provided components (via -t option) in JSON format to stdout. No pipeline will be generated with this option."
    fetch_tags: "Allows to fetch all docker tags for the components listed with the -t flag."
  }
}