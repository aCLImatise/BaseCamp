version 1.0

task PyomoTestSolvers {
  input {
    String csvCsvFile
    Boolean debugDebug
    Boolean verboseVerbose
    String? solverSolver
  }
  command <<<
    pyomo test-solvers \
      ~{solverSolver} \
      ~{if defined(csvCsvFile) then ("--csv-file " +  '"' + csvCsvFile + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}