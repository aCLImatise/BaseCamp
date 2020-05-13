version 1.0

task PourRNA {
  input {
    String sequenceSequence
    String startStartStructure
    String startStartStructureFile
    String finalFinalStructure
    Int maxMaxThreads
    Boolean skipSkipDiagonal
    Int filterFilterBestK
    Boolean dynamicDynamicBestK
    String maxMaxNeighE
    Int maxMaxToQueue
    Int maxMaxToHash
    Boolean dynamicDynamicMaxToHash
    String maxMaxEnergy
    String deltaDeltaE
    Int maxMaxBpDistAdd
    String temperatureTemperature
    String gasGasConstant
    Int danglingDanglingEnd
    String boltzmannBoltzmannTemp
    Int energyEnergyModel
    Int moveMoveSet
    String transitionTransitionProb
    String energyEnergyFile
    String binaryBinaryRatesFile
    String binaryBinaryRatesFileSparse
    String saddleSaddleFile
    String barriersBarriersLikeOutput
    String partitionPartitionFunctions
    String dotDotPlot
    String dotDotPlotPerBasin
    Boolean verboseVerbose
  }
  command <<<
    pourRNA \
      ~{if defined(sequenceSequence) then ("--sequence " +  '"' + sequenceSequence + '"') else ""} \
      ~{if defined(startStartStructure) then ("--start-structure " +  '"' + startStartStructure + '"') else ""} \
      ~{if defined(startStartStructureFile) then ("--start-structure-file " +  '"' + startStartStructureFile + '"') else ""} \
      ~{if defined(finalFinalStructure) then ("--final-structure " +  '"' + finalFinalStructure + '"') else ""} \
      ~{if defined(maxMaxThreads) then ("--max-threads " +  '"' + maxMaxThreads + '"') else ""} \
      ~{true="--skip-diagonal" false="" skipSkipDiagonal} \
      ~{if defined(filterFilterBestK) then ("--filter-best-k " +  '"' + filterFilterBestK + '"') else ""} \
      ~{true="--dynamic-best-k" false="" dynamicDynamicBestK} \
      ~{if defined(maxMaxNeighE) then ("--max-neigh-e " +  '"' + maxMaxNeighE + '"') else ""} \
      ~{if defined(maxMaxToQueue) then ("--max-to-queue " +  '"' + maxMaxToQueue + '"') else ""} \
      ~{if defined(maxMaxToHash) then ("--max-to-hash " +  '"' + maxMaxToHash + '"') else ""} \
      ~{true="--dynamic-max-to-hash" false="" dynamicDynamicMaxToHash} \
      ~{if defined(maxMaxEnergy) then ("--max-energy " +  '"' + maxMaxEnergy + '"') else ""} \
      ~{if defined(deltaDeltaE) then ("--delta-e " +  '"' + deltaDeltaE + '"') else ""} \
      ~{if defined(maxMaxBpDistAdd) then ("--max-bp-dist-add " +  '"' + maxMaxBpDistAdd + '"') else ""} \
      ~{if defined(temperatureTemperature) then ("--temperature " +  '"' + temperatureTemperature + '"') else ""} \
      ~{if defined(gasGasConstant) then ("--gas-constant " +  '"' + gasGasConstant + '"') else ""} \
      ~{if defined(danglingDanglingEnd) then ("--dangling-end " +  '"' + danglingDanglingEnd + '"') else ""} \
      ~{if defined(boltzmannBoltzmannTemp) then ("--boltzmann-temp " +  '"' + boltzmannBoltzmannTemp + '"') else ""} \
      ~{if defined(energyEnergyModel) then ("--energy-model " +  '"' + energyEnergyModel + '"') else ""} \
      ~{if defined(moveMoveSet) then ("--move-set " +  '"' + moveMoveSet + '"') else ""} \
      ~{if defined(transitionTransitionProb) then ("--transition-prob " +  '"' + transitionTransitionProb + '"') else ""} \
      ~{if defined(energyEnergyFile) then ("--energy-file " +  '"' + energyEnergyFile + '"') else ""} \
      ~{if defined(binaryBinaryRatesFile) then ("--binary-rates-file " +  '"' + binaryBinaryRatesFile + '"') else ""} \
      ~{if defined(binaryBinaryRatesFileSparse) then ("--binary-rates-file-sparse " +  '"' + binaryBinaryRatesFileSparse + '"') else ""} \
      ~{if defined(saddleSaddleFile) then ("--saddle-file " +  '"' + saddleSaddleFile + '"') else ""} \
      ~{if defined(barriersBarriersLikeOutput) then ("--barriers-like-output " +  '"' + barriersBarriersLikeOutput + '"') else ""} \
      ~{if defined(partitionPartitionFunctions) then ("--partition-functions " +  '"' + partitionPartitionFunctions + '"') else ""} \
      ~{if defined(dotDotPlot) then ("--dot-plot " +  '"' + dotDotPlot + '"') else ""} \
      ~{if defined(dotDotPlotPerBasin) then ("--dot-plot-per-basin " +  '"' + dotDotPlotPerBasin + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}