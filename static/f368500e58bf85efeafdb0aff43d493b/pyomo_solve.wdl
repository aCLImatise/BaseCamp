version 1.0

task PyomoSolve {
  input {
    String generateGenerateConfigTemplate
    String solverSolver
    String applyApply
    String? modelModelOrConfigFile
    String? dataDataFiles
  }
  command <<<
    pyomo solve \
      ~{modelModelOrConfigFile} \
      ~{if defined(generateGenerateConfigTemplate) then ("--generate-config-template " +  '"' + generateGenerateConfigTemplate + '"') else ""} \
      ~{if defined(solverSolver) then ("--solver " +  '"' + solverSolver + '"') else ""} \
      ~{if defined(applyApply) then ("- Apply " +  '"' + applyApply + '"') else ""} \
      ~{dataDataFiles}
  >>>
}