version 1.0

task OldScranCliFilterSce.R {
  input {
    String inputInputSceObject
    String exprsExprsValues
    String nNGenes
    String nNCells
    String spikesSpikes
    String outputOutputSceObject
  }
  command <<<
    old-scran-cli-filter-sce.R \
      ~{if defined(inputInputSceObject) then ("--input-sce-object " +  '"' + inputInputSceObject + '"') else ""} \
      ~{if defined(exprsExprsValues) then ("--exprs-values " +  '"' + exprsExprsValues + '"') else ""} \
      ~{if defined(nNGenes) then ("--n-genes " +  '"' + nNGenes + '"') else ""} \
      ~{if defined(nNCells) then ("--n-cells " +  '"' + nNCells + '"') else ""} \
      ~{if defined(spikesSpikes) then ("--spikes " +  '"' + spikesSpikes + '"') else ""} \
      ~{if defined(outputOutputSceObject) then ("--output-sce-object " +  '"' + outputOutputSceObject + '"') else ""}
  >>>
}