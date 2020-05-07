version 1.0

task Runph {
  input {
    String modelModelDirectory
    String instanceInstanceDirectory
    String objectiveObjectiveSenseStageBased
    String phPhWarmStartFile
    String phPhWarmStartIndex
    String boundsBoundsCfgfile
    String scenarioScenarioTreeSeed
    String scenarioScenarioTreeDownSampleFraction
    String scenarioScenarioBundleSpecification
    String createCreateRandomBundles
    Boolean asyncAsync
    String asyncAsyncBufferLength
    String rhoRhoCfgfile
    String aggregateAggregateCfgfile
    Int maxMaxIterations
    String termTermDiffThreshold
    Boolean enableEnableFreeDiscreteCountConvergence
    String freeFreeDiscreteCountThreshold
    Boolean enableEnableNormalizedTermDiffConvergence
    Boolean enableEnableTermDiffConvergence
    Boolean enableEnableOuterBoundConvergence
    String outerOuterBoundConvergenceThreshold
    String linearizeLinearizeNonBinaryPenaltyTerms
    String breakpointBreakpointStrategy
    Boolean retainRetainQuadraticBinaryTerms
    Boolean dropDropProximalTerms
    Boolean enableEnableWwExtensions
    String wwWwExtensionCfgfile
    String wwWwExtensionSuffixFile
    String wwWwExtensionAnnotationFile
    String userUserDefinedExtension
    Boolean preprocessPreprocessFixedVariables
    String scenarioScenarioMipGap
    String scenarioScenarioSolverOptions
    String solverSolver
    String solverSolverIo
    String solverSolverManager
    String pyroPyroHostname
    Boolean handshakeHandshakeWithPhPyro
    String phPhPyroRequiredWorkers
    String phPhPyroWorkersTimeout
    Boolean phPhPyroTransmitLeafStageVariableSolution
    Boolean disableDisableWarmStarts
    Boolean shutdownShutdownPyro
    Boolean efEfDisableWarmStarts
    String efEfOutputFile
    Boolean solveSolveEf
    String efEfSolver
    String efEfSolutionWriter
    String efEfSolverIo
    String efEfSolverManager
    String efEfMipGap
    Boolean efEfDisableWarmStart
    String efEfSolverOptions
    Boolean efEfOutputSolverLog
    Boolean efEfKeepSolverFiles
    Boolean efEfSymbolicSolverLabels
    Boolean outputOutputScenarioTreeSolution
    Boolean outputOutputSolverLogs
    Boolean symbolicSymbolicSolverLabels
    Boolean outputOutputSolverResults
    Boolean outputOutputTimes
    Boolean outputOutputInstanceConstructionTimes
    Boolean reportReportOnlyStatistics
    Boolean reportReportSolutions
    Boolean reportReportWeights
    Boolean reportReportRhosAllIterations
    Boolean reportReportRhosFirstIterations
    Boolean reportReportForZeroVariableValues
    Boolean reportReportOnlyNonConvergedVariables
    String solutionSolutionWriter
    Boolean suppressSuppressContinuousVariableOutput
    Boolean verboseVerbose
    Boolean writeWriteEf
    Boolean disableDisableGc
    Boolean keepKeepSolverFiles
    String profileProfile
    Boolean tracebackTraceback
  }
  command <<<
    runph \
      ~{if defined(modelModelDirectory) then ("--model-directory " +  '"' + modelModelDirectory + '"') else ""} \
      ~{if defined(instanceInstanceDirectory) then ("--instance-directory " +  '"' + instanceInstanceDirectory + '"') else ""} \
      ~{if defined(objectiveObjectiveSenseStageBased) then ("--objective-sense-stage-based " +  '"' + objectiveObjectiveSenseStageBased + '"') else ""} \
      ~{if defined(phPhWarmStartFile) then ("--ph-warmstart-file " +  '"' + phPhWarmStartFile + '"') else ""} \
      ~{if defined(phPhWarmStartIndex) then ("--ph-warmstart-index " +  '"' + phPhWarmStartIndex + '"') else ""} \
      ~{if defined(boundsBoundsCfgfile) then ("--bounds-cfgfile " +  '"' + boundsBoundsCfgfile + '"') else ""} \
      ~{if defined(scenarioScenarioTreeSeed) then ("--scenario-tree-seed " +  '"' + scenarioScenarioTreeSeed + '"') else ""} \
      ~{if defined(scenarioScenarioTreeDownSampleFraction) then ("--scenario-tree-downsample-fraction " +  '"' + scenarioScenarioTreeDownSampleFraction + '"') else ""} \
      ~{if defined(scenarioScenarioBundleSpecification) then ("--scenario-bundle-specification " +  '"' + scenarioScenarioBundleSpecification + '"') else ""} \
      ~{if defined(createCreateRandomBundles) then ("--create-random-bundles " +  '"' + createCreateRandomBundles + '"') else ""} \
      ~{true="--async" false="" asyncAsync} \
      ~{if defined(asyncAsyncBufferLength) then ("--async-buffer-length " +  '"' + asyncAsyncBufferLength + '"') else ""} \
      ~{if defined(rhoRhoCfgfile) then ("--rho-cfgfile " +  '"' + rhoRhoCfgfile + '"') else ""} \
      ~{if defined(aggregateAggregateCfgfile) then ("--aggregate-cfgfile " +  '"' + aggregateAggregateCfgfile + '"') else ""} \
      ~{if defined(maxMaxIterations) then ("--max-iterations " +  '"' + maxMaxIterations + '"') else ""} \
      ~{if defined(termTermDiffThreshold) then ("--termdiff-threshold " +  '"' + termTermDiffThreshold + '"') else ""} \
      ~{true="--enable-free-discrete-count-convergence" false="" enableEnableFreeDiscreteCountConvergence} \
      ~{if defined(freeFreeDiscreteCountThreshold) then ("--free-discrete-count-threshold " +  '"' + freeFreeDiscreteCountThreshold + '"') else ""} \
      ~{true="--enable-normalized-termdiff-convergence" false="" enableEnableNormalizedTermDiffConvergence} \
      ~{true="--enable-termdiff-convergence" false="" enableEnableTermDiffConvergence} \
      ~{true="--enable-outer-bound-convergence" false="" enableEnableOuterBoundConvergence} \
      ~{if defined(outerOuterBoundConvergenceThreshold) then ("--outer-bound-convergence-threshold " +  '"' + outerOuterBoundConvergenceThreshold + '"') else ""} \
      ~{if defined(linearizeLinearizeNonBinaryPenaltyTerms) then ("--linearize-nonbinary-penalty-terms " +  '"' + linearizeLinearizeNonBinaryPenaltyTerms + '"') else ""} \
      ~{if defined(breakpointBreakpointStrategy) then ("--breakpoint-strategy " +  '"' + breakpointBreakpointStrategy + '"') else ""} \
      ~{true="--retain-quadratic-binary-terms" false="" retainRetainQuadraticBinaryTerms} \
      ~{true="--drop-proximal-terms" false="" dropDropProximalTerms} \
      ~{true="--enable-ww-extensions" false="" enableEnableWwExtensions} \
      ~{if defined(wwWwExtensionCfgfile) then ("--ww-extension-cfgfile " +  '"' + wwWwExtensionCfgfile + '"') else ""} \
      ~{if defined(wwWwExtensionSuffixFile) then ("--ww-extension-suffixfile " +  '"' + wwWwExtensionSuffixFile + '"') else ""} \
      ~{if defined(wwWwExtensionAnnotationFile) then ("--ww-extension-annotationfile " +  '"' + wwWwExtensionAnnotationFile + '"') else ""} \
      ~{if defined(userUserDefinedExtension) then ("--user-defined-extension " +  '"' + userUserDefinedExtension + '"') else ""} \
      ~{true="--preprocess-fixed-variables" false="" preprocessPreprocessFixedVariables} \
      ~{if defined(scenarioScenarioMipGap) then ("--scenario-mipgap " +  '"' + scenarioScenarioMipGap + '"') else ""} \
      ~{if defined(scenarioScenarioSolverOptions) then ("--scenario-solver-options " +  '"' + scenarioScenarioSolverOptions + '"') else ""} \
      ~{if defined(solverSolver) then ("--solver " +  '"' + solverSolver + '"') else ""} \
      ~{if defined(solverSolverIo) then ("--solver-io " +  '"' + solverSolverIo + '"') else ""} \
      ~{if defined(solverSolverManager) then ("--solver-manager " +  '"' + solverSolverManager + '"') else ""} \
      ~{if defined(pyroPyroHostname) then ("--pyro-hostname " +  '"' + pyroPyroHostname + '"') else ""} \
      ~{true="--handshake-with-phpyro" false="" handshakeHandshakeWithPhPyro} \
      ~{if defined(phPhPyroRequiredWorkers) then ("--phpyro-required-workers " +  '"' + phPhPyroRequiredWorkers + '"') else ""} \
      ~{if defined(phPhPyroWorkersTimeout) then ("--phpyro-workers-timeout " +  '"' + phPhPyroWorkersTimeout + '"') else ""} \
      ~{true="--phpyro-transmit-leaf-stage-variable-solution" false="" phPhPyroTransmitLeafStageVariableSolution} \
      ~{true="--disable-warmstarts" false="" disableDisableWarmStarts} \
      ~{true="--shutdown-pyro" false="" shutdownShutdownPyro} \
      ~{true="--ef-disable-warmstarts" false="" efEfDisableWarmStarts} \
      ~{if defined(efEfOutputFile) then ("--ef-output-file " +  '"' + efEfOutputFile + '"') else ""} \
      ~{true="--solve-ef" false="" solveSolveEf} \
      ~{if defined(efEfSolver) then ("--ef-solver " +  '"' + efEfSolver + '"') else ""} \
      ~{if defined(efEfSolutionWriter) then ("--ef-solution-writer " +  '"' + efEfSolutionWriter + '"') else ""} \
      ~{if defined(efEfSolverIo) then ("--ef-solver-io " +  '"' + efEfSolverIo + '"') else ""} \
      ~{if defined(efEfSolverManager) then ("--ef-solver-manager " +  '"' + efEfSolverManager + '"') else ""} \
      ~{if defined(efEfMipGap) then ("--ef-mipgap " +  '"' + efEfMipGap + '"') else ""} \
      ~{true="--ef-disable-warmstart" false="" efEfDisableWarmStart} \
      ~{if defined(efEfSolverOptions) then ("--ef-solver-options " +  '"' + efEfSolverOptions + '"') else ""} \
      ~{true="--ef-output-solver-log" false="" efEfOutputSolverLog} \
      ~{true="--ef-keep-solver-files" false="" efEfKeepSolverFiles} \
      ~{true="--ef-symbolic-solver-labels" false="" efEfSymbolicSolverLabels} \
      ~{true="--output-scenario-tree-solution" false="" outputOutputScenarioTreeSolution} \
      ~{true="--output-solver-logs" false="" outputOutputSolverLogs} \
      ~{true="--symbolic-solver-labels" false="" symbolicSymbolicSolverLabels} \
      ~{true="--output-solver-results" false="" outputOutputSolverResults} \
      ~{true="--output-times" false="" outputOutputTimes} \
      ~{true="--output-instance-construction-times" false="" outputOutputInstanceConstructionTimes} \
      ~{true="--report-only-statistics" false="" reportReportOnlyStatistics} \
      ~{true="--report-solutions" false="" reportReportSolutions} \
      ~{true="--report-weights" false="" reportReportWeights} \
      ~{true="--report-rhos-all-iterations" false="" reportReportRhosAllIterations} \
      ~{true="--report-rhos-first-iterations" false="" reportReportRhosFirstIterations} \
      ~{true="--report-for-zero-variable-values" false="" reportReportForZeroVariableValues} \
      ~{true="--report-only-nonconverged-variables" false="" reportReportOnlyNonConvergedVariables} \
      ~{if defined(solutionSolutionWriter) then ("--solution-writer " +  '"' + solutionSolutionWriter + '"') else ""} \
      ~{true="--suppress-continuous-variable-output" false="" suppressSuppressContinuousVariableOutput} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--write-ef" false="" writeWriteEf} \
      ~{true="--disable-gc" false="" disableDisableGc} \
      ~{true="--keep-solver-files" false="" keepKeepSolverFiles} \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""} \
      ~{true="--traceback" false="" tracebackTraceback}
  >>>
}