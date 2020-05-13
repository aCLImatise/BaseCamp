version 1.0

task FlowcraftBuild {
  input {
    String tasksTasks
    String recipeRecipe
    String oO
    String nN
    Boolean mergeMergeParams
    Boolean pipelinePipelineOnly
    Boolean noNoDependEcy
    Boolean checkCheckPipeline
    Boolean componentComponentList
    Boolean componentComponentListShort
    Boolean recipeRecipeList
    Boolean recipeRecipeListShort
    Boolean checkCheckRecipe
    Boolean exportExportParams
    Boolean exportExportDirectives
    Boolean fetchFetchTags
  }
  command <<<
    flowcraft build \
      ~{if defined(tasksTasks) then ("--tasks " +  '"' + tasksTasks + '"') else ""} \
      ~{if defined(recipeRecipe) then ("--recipe " +  '"' + recipeRecipe + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="--merge-params" false="" mergeMergeParams} \
      ~{true="--pipeline-only" false="" pipelinePipelineOnly} \
      ~{true="--no-dependecy" false="" noNoDependEcy} \
      ~{true="--check-pipeline" false="" checkCheckPipeline} \
      ~{true="--component-list" false="" componentComponentList} \
      ~{true="--component-list-short" false="" componentComponentListShort} \
      ~{true="--recipe-list" false="" recipeRecipeList} \
      ~{true="--recipe-list-short" false="" recipeRecipeListShort} \
      ~{true="--check-recipe" false="" checkCheckRecipe} \
      ~{true="--export-params" false="" exportExportParams} \
      ~{true="--export-directives" false="" exportExportDirectives} \
      ~{true="--fetch-tags" false="" fetchFetchTags}
  >>>
}