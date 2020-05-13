version 1.0

task Runbenders {
  input {
    String modelModelDirectory
    String instanceInstanceDirectory
    String objectiveObjectiveSenseStageBased
    String scenarioScenarioTreeSeed
    String scenarioScenarioTreeDownSampleFraction
    String scenarioScenarioBundleSpecification
    String createCreateRandomBundles
    Int maxMaxIterations
    String percentPercentGap
    String multiMultiCutLevel
    String userUserBound
    Boolean masterMasterDisableWarmStarts
    String masterMasterSolver
    String masterMasterSolverIo
    String masterMasterMipGap
    String masterMasterSolverOptions
    Boolean masterMasterOutputSolverLog
    Boolean masterMasterKeepSolverFiles
    Boolean masterMasterSymbolicSolverLabels
    Boolean outputOutputSolverLogs
    Boolean symbolicSymbolicSolverLabels
    String scenarioScenarioMipGap
    String scenarioScenarioSolverOptions
    String solverSolver
    String solverSolverIo
    String solverSolverManager
    String phPhPyroRequiredWorkers
    String phPhPyroWorkersTimeout
    String pyroPyroHostname
    Boolean disableDisableWarmStarts
    Boolean shutdownShutdownPyro
    Boolean outputOutputScenarioTreeSolution
    Boolean outputOutputSolverResults
    Boolean outputOutputTimes
    Boolean outputOutputInstanceConstructionTimes
    Boolean verboseVerbose
    Boolean disableDisableGc
    Boolean keepKeepSolverFiles
    String profileProfile
    Boolean tracebackTraceback
  }
  command <<<
    runbenders \
      ~{if defined(modelModelDirectory) then ("--model-directory " +  '"' + modelModelDirectory + '"') else ""} \
      ~{if defined(instanceInstanceDirectory) then ("--instance-directory " +  '"' + instanceInstanceDirectory + '"') else ""} \
      ~{if defined(objectiveObjectiveSenseStageBased) then ("--objective-sense-stage-based " +  '"' + objectiveObjectiveSenseStageBased + '"') else ""} \
      ~{if defined(scenarioScenarioTreeSeed) then ("--scenario-tree-seed " +  '"' + scenarioScenarioTreeSeed + '"') else ""} \
      ~{if defined(scenarioScenarioTreeDownSampleFraction) then ("--scenario-tree-downsample-fraction " +  '"' + scenarioScenarioTreeDownSampleFraction + '"') else ""} \
      ~{if defined(scenarioScenarioBundleSpecification) then ("--scenario-bundle-specification " +  '"' + scenarioScenarioBundleSpecification + '"') else ""} \
      ~{if defined(createCreateRandomBundles) then ("--create-random-bundles " +  '"' + createCreateRandomBundles + '"') else ""} \
      ~{if defined(maxMaxIterations) then ("--max-iterations " +  '"' + maxMaxIterations + '"') else ""} \
      ~{if defined(percentPercentGap) then ("--percent-gap " +  '"' + percentPercentGap + '"') else ""} \
      ~{if defined(multiMultiCutLevel) then ("--multicut-level " +  '"' + multiMultiCutLevel + '"') else ""} \
      ~{if defined(userUserBound) then ("--user-bound " +  '"' + userUserBound + '"') else ""} \
      ~{true="--master-disable-warmstarts" false="" masterMasterDisableWarmStarts} \
      ~{if defined(masterMasterSolver) then ("--master-solver " +  '"' + masterMasterSolver + '"') else ""} \
      ~{if defined(masterMasterSolverIo) then ("--master-solver-io " +  '"' + masterMasterSolverIo + '"') else ""} \
      ~{if defined(masterMasterMipGap) then ("--master-mipgap " +  '"' + masterMasterMipGap + '"') else ""} \
      ~{if defined(masterMasterSolverOptions) then ("--master-solver-options " +  '"' + masterMasterSolverOptions + '"') else ""} \
      ~{true="--master-output-solver-log" false="" masterMasterOutputSolverLog} \
      ~{true="--master-keep-solver-files" false="" masterMasterKeepSolverFiles} \
      ~{true="--master-symbolic-solver-labels" false="" masterMasterSymbolicSolverLabels} \
      ~{true="--output-solver-logs" false="" outputOutputSolverLogs} \
      ~{true="--symbolic-solver-labels" false="" symbolicSymbolicSolverLabels} \
      ~{if defined(scenarioScenarioMipGap) then ("--scenario-mipgap " +  '"' + scenarioScenarioMipGap + '"') else ""} \
      ~{if defined(scenarioScenarioSolverOptions) then ("--scenario-solver-options " +  '"' + scenarioScenarioSolverOptions + '"') else ""} \
      ~{if defined(solverSolver) then ("--solver " +  '"' + solverSolver + '"') else ""} \
      ~{if defined(solverSolverIo) then ("--solver-io " +  '"' + solverSolverIo + '"') else ""} \
      ~{if defined(solverSolverManager) then ("--solver-manager " +  '"' + solverSolverManager + '"') else ""} \
      ~{if defined(phPhPyroRequiredWorkers) then ("--phpyro-required-workers " +  '"' + phPhPyroRequiredWorkers + '"') else ""} \
      ~{if defined(phPhPyroWorkersTimeout) then ("--phpyro-workers-timeout " +  '"' + phPhPyroWorkersTimeout + '"') else ""} \
      ~{if defined(pyroPyroHostname) then ("--pyro-hostname " +  '"' + pyroPyroHostname + '"') else ""} \
      ~{true="--disable-warmstarts" false="" disableDisableWarmStarts} \
      ~{true="--shutdown-pyro" false="" shutdownShutdownPyro} \
      ~{true="--output-scenario-tree-solution" false="" outputOutputScenarioTreeSolution} \
      ~{true="--output-solver-results" false="" outputOutputSolverResults} \
      ~{true="--output-times" false="" outputOutputTimes} \
      ~{true="--output-instance-construction-times" false="" outputOutputInstanceConstructionTimes} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--disable-gc" false="" disableDisableGc} \
      ~{true="--keep-solver-files" false="" keepKeepSolverFiles} \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""} \
      ~{true="--traceback" false="" tracebackTraceback}
  >>>
}