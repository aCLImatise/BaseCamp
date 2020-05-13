version 1.0

task Runef {
  input {
    String instanceInstanceDirectory
    String modelModelDirectory
    String objectiveObjectiveSenseStageBased
    String scenarioScenarioTreeSeed
    String scenarioScenarioTreeDownSampleFraction
    String cvarCvarWeight
    Boolean generateGenerateWeightedCvar
    String riskRiskAlpha
    String ccCcAlpha
    String ccCcIndicatorVar
    String mipMipGap
    Boolean solveSolve
    String solverSolver
    String solverSolverIo
    String solverSolverManager
    String solverSolverOptions
    Boolean disableDisableWarmStarts
    Boolean shutdownShutdownPyro
    String outputOutputFile
    Boolean symbolicSymbolicSolverLabels
    Boolean outputOutputSolverLog
    String solutionSolutionWriter
    Boolean verboseVerbose
    Boolean outputOutputTimes
    Boolean disableDisableGc
    Boolean keepKeepSolverFiles
    String profileProfile
    Boolean tracebackTraceback
  }
  command <<<
    runef \
      ~{if defined(instanceInstanceDirectory) then ("--instance-directory " +  '"' + instanceInstanceDirectory + '"') else ""} \
      ~{if defined(modelModelDirectory) then ("--model-directory " +  '"' + modelModelDirectory + '"') else ""} \
      ~{if defined(objectiveObjectiveSenseStageBased) then ("--objective-sense-stage-based " +  '"' + objectiveObjectiveSenseStageBased + '"') else ""} \
      ~{if defined(scenarioScenarioTreeSeed) then ("--scenario-tree-seed " +  '"' + scenarioScenarioTreeSeed + '"') else ""} \
      ~{if defined(scenarioScenarioTreeDownSampleFraction) then ("--scenario-tree-downsample-fraction " +  '"' + scenarioScenarioTreeDownSampleFraction + '"') else ""} \
      ~{if defined(cvarCvarWeight) then ("--cvar-weight " +  '"' + cvarCvarWeight + '"') else ""} \
      ~{true="--generate-weighted-cvar" false="" generateGenerateWeightedCvar} \
      ~{if defined(riskRiskAlpha) then ("--risk-alpha " +  '"' + riskRiskAlpha + '"') else ""} \
      ~{if defined(ccCcAlpha) then ("--cc-alpha " +  '"' + ccCcAlpha + '"') else ""} \
      ~{if defined(ccCcIndicatorVar) then ("--cc-indicator-var " +  '"' + ccCcIndicatorVar + '"') else ""} \
      ~{if defined(mipMipGap) then ("--mipgap " +  '"' + mipMipGap + '"') else ""} \
      ~{true="--solve" false="" solveSolve} \
      ~{if defined(solverSolver) then ("--solver " +  '"' + solverSolver + '"') else ""} \
      ~{if defined(solverSolverIo) then ("--solver-io " +  '"' + solverSolverIo + '"') else ""} \
      ~{if defined(solverSolverManager) then ("--solver-manager " +  '"' + solverSolverManager + '"') else ""} \
      ~{if defined(solverSolverOptions) then ("--solver-options " +  '"' + solverSolverOptions + '"') else ""} \
      ~{true="--disable-warmstarts" false="" disableDisableWarmStarts} \
      ~{true="--shutdown-pyro" false="" shutdownShutdownPyro} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--symbolic-solver-labels" false="" symbolicSymbolicSolverLabels} \
      ~{true="--output-solver-log" false="" outputOutputSolverLog} \
      ~{if defined(solutionSolutionWriter) then ("--solution-writer " +  '"' + solutionSolutionWriter + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--output-times" false="" outputOutputTimes} \
      ~{true="--disable-gc" false="" disableDisableGc} \
      ~{true="--keep-solver-files" false="" keepKeepSolverFiles} \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""} \
      ~{true="--traceback" false="" tracebackTraceback}
  >>>
}