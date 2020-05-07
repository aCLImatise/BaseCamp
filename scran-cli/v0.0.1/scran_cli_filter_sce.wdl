version 1.0

task ScranCliFilterSce.R {
  input {
    String inputInputSceObject
    String exprsExprsValues
    Int minMinGenes
    Int minMinCells
    String spikesSpikes
    String nNSpikes
    String logLog
    String outputOutputSceObject
  }
  command <<<
    scran-cli-filter-sce.R \
      ~{if defined(inputInputSceObject) then ("--input-sce-object " +  '"' + inputInputSceObject + '"') else ""} \
      ~{if defined(exprsExprsValues) then ("--exprs-values " +  '"' + exprsExprsValues + '"') else ""} \
      ~{if defined(minMinGenes) then ("--min-genes " +  '"' + minMinGenes + '"') else ""} \
      ~{if defined(minMinCells) then ("--min-cells " +  '"' + minMinCells + '"') else ""} \
      ~{if defined(spikesSpikes) then ("--spikes " +  '"' + spikesSpikes + '"') else ""} \
      ~{if defined(nNSpikes) then ("--n-spikes " +  '"' + nNSpikes + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(outputOutputSceObject) then ("--output-sce-object " +  '"' + outputOutputSceObject + '"') else ""}
  >>>
}