version 1.0

task AssemblerflowBuild {
  input {
    String tasksTasks
    String recipeRecipe
    String oO
    String nN
    Boolean pipelinePipelineOnly
    Boolean noNoDependEcy
    Boolean checkCheckPipeline
    Boolean detailedDetailedList
    Boolean shortShortList
  }
  command <<<
    assemblerflow build \
      ~{if defined(tasksTasks) then ("--tasks " +  '"' + tasksTasks + '"') else ""} \
      ~{if defined(recipeRecipe) then ("--recipe " +  '"' + recipeRecipe + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="--pipeline-only" false="" pipelinePipelineOnly} \
      ~{true="--no-dependecy" false="" noNoDependEcy} \
      ~{true="--check-pipeline" false="" checkCheckPipeline} \
      ~{true="--detailed-list" false="" detailedDetailedList} \
      ~{true="--short-list" false="" shortShortList}
  >>>
}