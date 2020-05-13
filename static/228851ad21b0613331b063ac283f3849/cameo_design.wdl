version 1.0

task CameoDesign {
  input {
    File outputOutput
    Boolean formatFormat
    Boolean aerobicAerobic
    Int coresCores
    Boolean differentialDifferentialFva
    Boolean heuristicHeuristicOptimization
    Int maxMaxPathwayPredictions
    Int differentialDifferentialFvaPoints
    Int pathwayPathwayPredictionTimeout
    Int heuristicHeuristicOptimizationTimeout
    Boolean loggingLogging
  }
  command <<<
    cameo design \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--format" false="" formatFormat} \
      ~{true="--aerobic" false="" aerobicAerobic} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{true="--differential-fva" false="" differentialDifferentialFva} \
      ~{true="--heuristic-optimization" false="" heuristicHeuristicOptimization} \
      ~{if defined(maxMaxPathwayPredictions) then ("--max-pathway-predictions " +  '"' + maxMaxPathwayPredictions + '"') else ""} \
      ~{if defined(differentialDifferentialFvaPoints) then ("--differential-fva-points " +  '"' + differentialDifferentialFvaPoints + '"') else ""} \
      ~{if defined(pathwayPathwayPredictionTimeout) then ("--pathway-prediction-timeout " +  '"' + pathwayPathwayPredictionTimeout + '"') else ""} \
      ~{if defined(heuristicHeuristicOptimizationTimeout) then ("--heuristic-optimization-timeout " +  '"' + heuristicHeuristicOptimizationTimeout + '"') else ""} \
      ~{true="--logging" false="" loggingLogging}
  >>>
}