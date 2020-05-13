version 1.0

task HpBuildTree {
  input {
    String seqsSeqs
    String dataDataType
    String outputOutputName
    String modelModel
    String outdirOutdir
    Boolean runRunFullAnalysis
    String outOutGroup
    String parsimonyParsimonySeed
    String wgtWgtFile
    String secSecSub
    String bootstrapBootstrap
    String bootstrapBootstrapThreshold
    String numNumCat
    Boolean randRandStartingTree
    Boolean convergenceConvergenceCriterion
    String likelihoodLikelihoodEpsilon
    String excludeExcludeFilename
    String algoAlgoOption
    Boolean catCatModel
    String groupingGroupingFile
    String placementPlacementThreshold
    Boolean disableDisablePatternCompression
    String initialInitialRearrangement
    String posterioriPosteriori
    Boolean printPrintIntermediateTrees
    String majorityMajorityRule
    Boolean printPrintBranchLength
    String ictcIctcMetrics
    Boolean partitionPartitionBranchLength
    Boolean disableDisableCheck
    String aaAaModel
    String multipleMultipleModelFile
    String binaryBinaryTree
    String binaryBinaryParameterFile
    String secondarySecondaryStructure
    String userUserStartingTree
    Boolean medianMedianGamma
    Boolean versionVersionInfo
    Boolean rateRateHeterogeneity
    Directory directoryDirectory
    String windowWindow
    String rapidRapidBootstrapNumSeed
    Boolean randomRandomAddition
    Boolean startingStartingTree
    String quartetQuartetGroupingFilename
    String multipleMultipleTreeFile
    String numberNumberOfRuns
    Boolean mesquiteMesquite
    Boolean silentSilent
    Boolean noNoSeqCheck
    Boolean noNoBfgs
    String epaEpaPlaceNum
    String epaEpaProbThreshold
    String epaEpaLikelihood
    Boolean hky85Hky85
    String bootstrapperBootstrapperM
    Boolean optionOptionHelp
    Boolean keepKeepTmp
    Boolean quietQuiet
    String logLogFile
    Boolean debugDebug
  }
  command <<<
    hp_build_tree \
      ~{if defined(seqsSeqs) then ("--seqs " +  '"' + seqsSeqs + '"') else ""} \
      ~{if defined(dataDataType) then ("--data_type " +  '"' + dataDataType + '"') else ""} \
      ~{if defined(outputOutputName) then ("--output_name " +  '"' + outputOutputName + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--run_full_analysis" false="" runRunFullAnalysis} \
      ~{if defined(outOutGroup) then ("--outgroup " +  '"' + outOutGroup + '"') else ""} \
      ~{if defined(parsimonyParsimonySeed) then ("--parsimony_seed " +  '"' + parsimonyParsimonySeed + '"') else ""} \
      ~{if defined(wgtWgtFile) then ("--wgtFile " +  '"' + wgtWgtFile + '"') else ""} \
      ~{if defined(secSecSub) then ("--secsub " +  '"' + secSecSub + '"') else ""} \
      ~{if defined(bootstrapBootstrap) then ("--bootstrap " +  '"' + bootstrapBootstrap + '"') else ""} \
      ~{if defined(bootstrapBootstrapThreshold) then ("--bootstrap_threshold " +  '"' + bootstrapBootstrapThreshold + '"') else ""} \
      ~{if defined(numNumCat) then ("--numCat " +  '"' + numNumCat + '"') else ""} \
      ~{true="--rand_starting_tree" false="" randRandStartingTree} \
      ~{true="--convergence_criterion" false="" convergenceConvergenceCriterion} \
      ~{if defined(likelihoodLikelihoodEpsilon) then ("--likelihoodEpsilon " +  '"' + likelihoodLikelihoodEpsilon + '"') else ""} \
      ~{if defined(excludeExcludeFilename) then ("--excludeFileName " +  '"' + excludeExcludeFilename + '"') else ""} \
      ~{if defined(algoAlgoOption) then ("--algo_option " +  '"' + algoAlgoOption + '"') else ""} \
      ~{true="--cat_model" false="" catCatModel} \
      ~{if defined(groupingGroupingFile) then ("--groupingFile " +  '"' + groupingGroupingFile + '"') else ""} \
      ~{if defined(placementPlacementThreshold) then ("--placementThreshold " +  '"' + placementPlacementThreshold + '"') else ""} \
      ~{true="--disable_pattern_compression" false="" disableDisablePatternCompression} \
      ~{if defined(initialInitialRearrangement) then ("--InitialRearrangement " +  '"' + initialInitialRearrangement + '"') else ""} \
      ~{if defined(posterioriPosteriori) then ("--posteriori " +  '"' + posterioriPosteriori + '"') else ""} \
      ~{true="--print_intermediate_trees" false="" printPrintIntermediateTrees} \
      ~{if defined(majorityMajorityRule) then ("--majorityrule " +  '"' + majorityMajorityRule + '"') else ""} \
      ~{true="--print_branch_length" false="" printPrintBranchLength} \
      ~{if defined(ictcIctcMetrics) then ("--ICTCmetrics " +  '"' + ictcIctcMetrics + '"') else ""} \
      ~{true="--partition_branch_length" false="" partitionPartitionBranchLength} \
      ~{true="--disable_check" false="" disableDisableCheck} \
      ~{if defined(aaAaModel) then ("--AAmodel " +  '"' + aaAaModel + '"') else ""} \
      ~{if defined(multipleMultipleModelFile) then ("--multiplemodelFile " +  '"' + multipleMultipleModelFile + '"') else ""} \
      ~{if defined(binaryBinaryTree) then ("--binarytree " +  '"' + binaryBinaryTree + '"') else ""} \
      ~{if defined(binaryBinaryParameterFile) then ("--BinaryParameterFile " +  '"' + binaryBinaryParameterFile + '"') else ""} \
      ~{if defined(secondarySecondaryStructure) then ("--SecondaryStructure " +  '"' + secondarySecondaryStructure + '"') else ""} \
      ~{if defined(userUserStartingTree) then ("--UserStartingTree " +  '"' + userUserStartingTree + '"') else ""} \
      ~{true="--median_GAMMA" false="" medianMedianGamma} \
      ~{true="--version_info" false="" versionVersionInfo} \
      ~{true="--rate_heterogeneity" false="" rateRateHeterogeneity} \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(rapidRapidBootstrapNumSeed) then ("--RapidBootstrapNumSeed " +  '"' + rapidRapidBootstrapNumSeed + '"') else ""} \
      ~{true="--random_addition" false="" randomRandomAddition} \
      ~{true="--starting_tree" false="" startingStartingTree} \
      ~{if defined(quartetQuartetGroupingFilename) then ("--quartetGroupingFileName " +  '"' + quartetQuartetGroupingFilename + '"') else ""} \
      ~{if defined(multipleMultipleTreeFile) then ("--multipleTreeFile " +  '"' + multipleMultipleTreeFile + '"') else ""} \
      ~{if defined(numberNumberOfRuns) then ("--NumberofRuns " +  '"' + numberNumberOfRuns + '"') else ""} \
      ~{true="--mesquite" false="" mesquiteMesquite} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--noseqcheck" false="" noNoSeqCheck} \
      ~{true="--nobfgs" false="" noNoBfgs} \
      ~{if defined(epaEpaPlaceNum) then ("--epaPlaceNum " +  '"' + epaEpaPlaceNum + '"') else ""} \
      ~{if defined(epaEpaProbThreshold) then ("--epaProbThreshold " +  '"' + epaEpaProbThreshold + '"') else ""} \
      ~{if defined(epaEpaLikelihood) then ("--epaLikelihood " +  '"' + epaEpaLikelihood + '"') else ""} \
      ~{true="--HKY85" false="" hky85Hky85} \
      ~{if defined(bootstrapperBootstrapperM) then ("--BootstrapPerm " +  '"' + bootstrapperBootstrapperM + '"') else ""} \
      ~{true="--option_help" false="" optionOptionHelp} \
      ~{true="--keep_tmp" false="" keepKeepTmp} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}