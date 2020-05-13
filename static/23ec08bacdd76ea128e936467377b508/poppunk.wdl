version 1.0

task Poppunk {
  input {
    Boolean easyEasyRun
    Boolean createCreateDb
    Boolean fitFitModel
    Boolean refineRefineModel
    Boolean assignAssignQuery
    Boolean generateGenerateViz
    String thresholdThreshold
    Boolean useUseModel
    String refRefDb
    String rRFiles
    String qQFiles
    String distancesDistances
    String externalExternalClustering
    String outputOutput
    String plotPlotFit
    Boolean fullFullDb
    Boolean updateUpdateDb
    Boolean overwriteOverwrite
    Int minMinK
    Int maxMaxK
    String kKStep
    String sketchSketchSize
    Int minMinKmErCount
    Boolean exactExactCount
    Boolean strandStrandPreserved
    Int maxMaxADist
    Boolean ignoreIgnoreLength
    String estimatedEstimatedLength
    String kK
    Boolean dbsDbsCan
    String dD
    Int minMinClusterProp
    String posPosShift
    String negNegShift
    String manualManualStart
    Boolean indivIndivRefine
    Boolean noNoLocal
    String modelModelDir
    String previousPreviousClustering
    Boolean coreCoreOnly
    Boolean accessoryAccessoryOnly
    String subsetSubset
    Boolean microMicroReact
    Boolean cytoscapeCytoscape
    Boolean pPHandango
    Boolean grapeGrapeTree
    String rapidRapidNj
    String perplexityPerplexity
    String infoInfoCsv
    Boolean useUseMash
    String mashMash
    String threadsThreads
    Boolean useUseGpu
    String deviceidDeviceid
    Boolean noNoStream
  }
  command <<<
    poppunk \
      ~{true="--easy-run" false="" easyEasyRun} \
      ~{true="--create-db" false="" createCreateDb} \
      ~{true="--fit-model" false="" fitFitModel} \
      ~{true="--refine-model" false="" refineRefineModel} \
      ~{true="--assign-query" false="" assignAssignQuery} \
      ~{true="--generate-viz" false="" generateGenerateViz} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{true="--use-model" false="" useUseModel} \
      ~{if defined(refRefDb) then ("--ref-db " +  '"' + refRefDb + '"') else ""} \
      ~{if defined(rRFiles) then ("--r-files " +  '"' + rRFiles + '"') else ""} \
      ~{if defined(qQFiles) then ("--q-files " +  '"' + qQFiles + '"') else ""} \
      ~{if defined(distancesDistances) then ("--distances " +  '"' + distancesDistances + '"') else ""} \
      ~{if defined(externalExternalClustering) then ("--external-clustering " +  '"' + externalExternalClustering + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(plotPlotFit) then ("--plot-fit " +  '"' + plotPlotFit + '"') else ""} \
      ~{true="--full-db" false="" fullFullDb} \
      ~{true="--update-db" false="" updateUpdateDb} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{if defined(minMinK) then ("--min-k " +  '"' + minMinK + '"') else ""} \
      ~{if defined(maxMaxK) then ("--max-k " +  '"' + maxMaxK + '"') else ""} \
      ~{if defined(kKStep) then ("--k-step " +  '"' + kKStep + '"') else ""} \
      ~{if defined(sketchSketchSize) then ("--sketch-size " +  '"' + sketchSketchSize + '"') else ""} \
      ~{if defined(minMinKmErCount) then ("--min-kmer-count " +  '"' + minMinKmErCount + '"') else ""} \
      ~{true="--exact-count" false="" exactExactCount} \
      ~{true="--strand-preserved" false="" strandStrandPreserved} \
      ~{if defined(maxMaxADist) then ("--max-a-dist " +  '"' + maxMaxADist + '"') else ""} \
      ~{true="--ignore-length" false="" ignoreIgnoreLength} \
      ~{if defined(estimatedEstimatedLength) then ("--estimated-length " +  '"' + estimatedEstimatedLength + '"') else ""} \
      ~{if defined(kK) then ("--K " +  '"' + kK + '"') else ""} \
      ~{true="--dbscan" false="" dbsDbsCan} \
      ~{if defined(dD) then ("--D " +  '"' + dD + '"') else ""} \
      ~{if defined(minMinClusterProp) then ("--min-cluster-prop " +  '"' + minMinClusterProp + '"') else ""} \
      ~{if defined(posPosShift) then ("--pos-shift " +  '"' + posPosShift + '"') else ""} \
      ~{if defined(negNegShift) then ("--neg-shift " +  '"' + negNegShift + '"') else ""} \
      ~{if defined(manualManualStart) then ("--manual-start " +  '"' + manualManualStart + '"') else ""} \
      ~{true="--indiv-refine" false="" indivIndivRefine} \
      ~{true="--no-local" false="" noNoLocal} \
      ~{if defined(modelModelDir) then ("--model-dir " +  '"' + modelModelDir + '"') else ""} \
      ~{if defined(previousPreviousClustering) then ("--previous-clustering " +  '"' + previousPreviousClustering + '"') else ""} \
      ~{true="--core-only" false="" coreCoreOnly} \
      ~{true="--accessory-only" false="" accessoryAccessoryOnly} \
      ~{if defined(subsetSubset) then ("--subset " +  '"' + subsetSubset + '"') else ""} \
      ~{true="--microreact" false="" microMicroReact} \
      ~{true="--cytoscape" false="" cytoscapeCytoscape} \
      ~{true="--phandango" false="" pPHandango} \
      ~{true="--grapetree" false="" grapeGrapeTree} \
      ~{if defined(rapidRapidNj) then ("--rapidnj " +  '"' + rapidRapidNj + '"') else ""} \
      ~{if defined(perplexityPerplexity) then ("--perplexity " +  '"' + perplexityPerplexity + '"') else ""} \
      ~{if defined(infoInfoCsv) then ("--info-csv " +  '"' + infoInfoCsv + '"') else ""} \
      ~{true="--use-mash" false="" useUseMash} \
      ~{if defined(mashMash) then ("--mash " +  '"' + mashMash + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--use-gpu" false="" useUseGpu} \
      ~{if defined(deviceidDeviceid) then ("--deviceid " +  '"' + deviceidDeviceid + '"') else ""} \
      ~{true="--no-stream" false="" noNoStream}
  >>>
}