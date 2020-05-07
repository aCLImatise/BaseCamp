version 1.0

task RNAsnoop {
  input {
    Boolean detailedDetailedHelp
    String queryQuery
    String targetTarget
    String suffixSuffix
    String fromFromRnaPlFold
    Boolean alignmentAlignmentMode
    Int fastFastFolding
    Int extensionExtensionCost
    Int minimalMinimalRightDuplex
    Int minimalMinimalLoopEnergy
    Int minimalMinimalLeftDuplex
    Int minimalMinimalDuplex
    Int duplexDuplexDistance
    Int minimalMinimalStemLength
    Int maximalMaximalStemLength
    Int minimalMinimalDuplexBoxLength
    Int maximalMaximalDuplexBoxLength
    Int minimalMinimalSnornaStemLoopLength
    Int maximalMaximalSnornaStemLoopLength
    Int minimalMinimalSnornaDuplexLength
    Int maximalMaximalSnornaDuplexLength
    Int minimalMinimalDuplexStemEnergy
    Int minimalMinimalTotalEnergy
    Int maximalMaximalStemAsymmetry
    Int minimalMinimalLowerStemEnergy
    String energyEnergyThreshold
    Boolean produceProducePs
    String outputOutputDirectory
    Boolean directDirectRedraw
    String fromFromRnaUp
  }
  command <<<
    RNAsnoop \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{if defined(fromFromRnaPlFold) then ("--from-RNAplfold " +  '"' + fromFromRnaPlFold + '"') else ""} \
      ~{true="--alignment-mode" false="" alignmentAlignmentMode} \
      ~{if defined(fastFastFolding) then ("--fast-folding " +  '"' + fastFastFolding + '"') else ""} \
      ~{if defined(extensionExtensionCost) then ("--extension-cost " +  '"' + extensionExtensionCost + '"') else ""} \
      ~{if defined(minimalMinimalRightDuplex) then ("--minimal-right-duplex " +  '"' + minimalMinimalRightDuplex + '"') else ""} \
      ~{if defined(minimalMinimalLoopEnergy) then ("--minimal-loop-energy " +  '"' + minimalMinimalLoopEnergy + '"') else ""} \
      ~{if defined(minimalMinimalLeftDuplex) then ("--minimal-left-duplex " +  '"' + minimalMinimalLeftDuplex + '"') else ""} \
      ~{if defined(minimalMinimalDuplex) then ("--minimal-duplex " +  '"' + minimalMinimalDuplex + '"') else ""} \
      ~{if defined(duplexDuplexDistance) then ("--duplex-distance " +  '"' + duplexDuplexDistance + '"') else ""} \
      ~{if defined(minimalMinimalStemLength) then ("--minimal-stem-length " +  '"' + minimalMinimalStemLength + '"') else ""} \
      ~{if defined(maximalMaximalStemLength) then ("--maximal-stem-length " +  '"' + maximalMaximalStemLength + '"') else ""} \
      ~{if defined(minimalMinimalDuplexBoxLength) then ("--minimal-duplex-box-length " +  '"' + minimalMinimalDuplexBoxLength + '"') else ""} \
      ~{if defined(maximalMaximalDuplexBoxLength) then ("--maximal-duplex-box-length " +  '"' + maximalMaximalDuplexBoxLength + '"') else ""} \
      ~{if defined(minimalMinimalSnornaStemLoopLength) then ("--minimal-snoRNA-stem-loop-length " +  '"' + minimalMinimalSnornaStemLoopLength + '"') else ""} \
      ~{if defined(maximalMaximalSnornaStemLoopLength) then ("--maximal-snoRNA-stem-loop-length " +  '"' + maximalMaximalSnornaStemLoopLength + '"') else ""} \
      ~{if defined(minimalMinimalSnornaDuplexLength) then ("--minimal-snoRNA-duplex-length " +  '"' + minimalMinimalSnornaDuplexLength + '"') else ""} \
      ~{if defined(maximalMaximalSnornaDuplexLength) then ("--maximal-snoRNA-duplex-length " +  '"' + maximalMaximalSnornaDuplexLength + '"') else ""} \
      ~{if defined(minimalMinimalDuplexStemEnergy) then ("--minimal-duplex-stem-energy " +  '"' + minimalMinimalDuplexStemEnergy + '"') else ""} \
      ~{if defined(minimalMinimalTotalEnergy) then ("--minimal-total-energy " +  '"' + minimalMinimalTotalEnergy + '"') else ""} \
      ~{if defined(maximalMaximalStemAsymmetry) then ("--maximal-stem-asymmetry " +  '"' + maximalMaximalStemAsymmetry + '"') else ""} \
      ~{if defined(minimalMinimalLowerStemEnergy) then ("--minimal-lower-stem-energy " +  '"' + minimalMinimalLowerStemEnergy + '"') else ""} \
      ~{if defined(energyEnergyThreshold) then ("--energy-threshold " +  '"' + energyEnergyThreshold + '"') else ""} \
      ~{true="--produce-ps" false="" produceProducePs} \
      ~{if defined(outputOutputDirectory) then ("--output_directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{true="--direct-redraw" false="" directDirectRedraw} \
      ~{if defined(fromFromRnaUp) then ("--from-RNAup " +  '"' + fromFromRnaUp + '"') else ""}
  >>>
}