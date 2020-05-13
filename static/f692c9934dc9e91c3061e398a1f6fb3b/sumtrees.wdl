version 1.0

task Sumtrees.py {
  input {
    String sourceSourceFormat
    String burninBurnin
    Boolean forceForceRooted
    Boolean forceForceUnrooted
    Boolean weightedWeightedTrees
    Boolean preservePreserveUnderscores
    String ultrametricUltrametricItyPrecision
    File taxTaxOnNamesFilePath
    File tipTipAgesFilePath
    String tipTipAgesFormat
    Boolean noNoTrimTipAgeLabels
    File targetTargetTreeFilePath
    String summarySummaryTarget
    Boolean fF
    Boolean allowAllowUnknownTargetTreeTaxA
    String rootRootTargetAtOutGroup
    Boolean rootRootTargetAtMidpoint
    String setSetOutGroup
    String setSetEdges
    String forceForceMinimumEdgeLength
    Boolean collapseCollapseNegativeEdges
    Boolean summarizeSummarizeNodeAges
    String labelsLabels
    Boolean suppressSuppressAnnotations
    Boolean percentagesPercentages
    Boolean dD
    File outputOutputTreeFilePath
    String outputOutputTreeFormat
    String extendedExtendedOutput
    Boolean noNoTaxABlock
    Boolean noNoAnalysisMetainformation
    String additionalAdditionalComments
    Boolean replaceReplace
    Boolean maximumMaximumMultiprocessing
    String multiprocessingMultiprocessing
    String logLogFrequency
    Boolean quietQuiet
    Boolean ignoreIgnoreMissingSupport
    Boolean usageUsageExamples
    Boolean describeDescribe
    String? treeTreeFilePath
  }
  command <<<
    sumtrees.py \
      ~{treeTreeFilePath} \
      ~{if defined(sourceSourceFormat) then ("--source-format " +  '"' + sourceSourceFormat + '"') else ""} \
      ~{if defined(burninBurnin) then ("--burnin " +  '"' + burninBurnin + '"') else ""} \
      ~{true="--force-rooted" false="" forceForceRooted} \
      ~{true="--force-unrooted" false="" forceForceUnrooted} \
      ~{true="--weighted-trees" false="" weightedWeightedTrees} \
      ~{true="--preserve-underscores" false="" preservePreserveUnderscores} \
      ~{if defined(ultrametricUltrametricItyPrecision) then ("--ultrametricity-precision " +  '"' + ultrametricUltrametricItyPrecision + '"') else ""} \
      ~{if defined(taxTaxOnNamesFilePath) then ("--taxon-names-filepath " +  '"' + taxTaxOnNamesFilePath + '"') else ""} \
      ~{if defined(tipTipAgesFilePath) then ("--tip-ages-filepath " +  '"' + tipTipAgesFilePath + '"') else ""} \
      ~{if defined(tipTipAgesFormat) then ("--tip-ages-format " +  '"' + tipTipAgesFormat + '"') else ""} \
      ~{true="--no-trim-tip-age-labels" false="" noNoTrimTipAgeLabels} \
      ~{if defined(targetTargetTreeFilePath) then ("--target-tree-filepath " +  '"' + targetTargetTreeFilePath + '"') else ""} \
      ~{if defined(summarySummaryTarget) then ("--summary-target " +  '"' + summarySummaryTarget + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="--allow-unknown-target-tree-taxa" false="" allowAllowUnknownTargetTreeTaxA} \
      ~{if defined(rootRootTargetAtOutGroup) then ("--root-target-at-outgroup " +  '"' + rootRootTargetAtOutGroup + '"') else ""} \
      ~{true="--root-target-at-midpoint" false="" rootRootTargetAtMidpoint} \
      ~{if defined(setSetOutGroup) then ("--set-outgroup " +  '"' + setSetOutGroup + '"') else ""} \
      ~{if defined(setSetEdges) then ("--set-edges " +  '"' + setSetEdges + '"') else ""} \
      ~{if defined(forceForceMinimumEdgeLength) then ("--force-minimum-edge-length " +  '"' + forceForceMinimumEdgeLength + '"') else ""} \
      ~{true="--collapse-negative-edges" false="" collapseCollapseNegativeEdges} \
      ~{true="--summarize-node-ages" false="" summarizeSummarizeNodeAges} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{true="--suppress-annotations" false="" suppressSuppressAnnotations} \
      ~{true="--percentages" false="" percentagesPercentages} \
      ~{true="-d" false="" dD} \
      ~{if defined(outputOutputTreeFilePath) then ("--output-tree-filepath " +  '"' + outputOutputTreeFilePath + '"') else ""} \
      ~{if defined(outputOutputTreeFormat) then ("--output-tree-format " +  '"' + outputOutputTreeFormat + '"') else ""} \
      ~{if defined(extendedExtendedOutput) then ("--extended-output " +  '"' + extendedExtendedOutput + '"') else ""} \
      ~{true="--no-taxa-block" false="" noNoTaxABlock} \
      ~{true="--no-analysis-metainformation" false="" noNoAnalysisMetainformation} \
      ~{if defined(additionalAdditionalComments) then ("--additional-comments " +  '"' + additionalAdditionalComments + '"') else ""} \
      ~{true="--replace" false="" replaceReplace} \
      ~{true="--maximum-multiprocessing" false="" maximumMaximumMultiprocessing} \
      ~{if defined(multiprocessingMultiprocessing) then ("--multiprocessing " +  '"' + multiprocessingMultiprocessing + '"') else ""} \
      ~{if defined(logLogFrequency) then ("--log-frequency " +  '"' + logLogFrequency + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--ignore-missing-support" false="" ignoreIgnoreMissingSupport} \
      ~{true="--usage-examples" false="" usageUsageExamples} \
      ~{true="--describe" false="" describeDescribe}
  >>>
}