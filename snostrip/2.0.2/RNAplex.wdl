version 1.0

task RNAplex {
  input {
    Boolean detailedDetailedHelp
    String queryQuery
    String targetTarget
    String accessibilityAccessibilityDir
    Boolean binaryBinary
    String paramParamFile
    String tempTemp
    Int interactionInteractionLength
    Int extensionExtensionCost
    Boolean probeProbeMode
    String probeProbeConcentration
    String naNaConcentration
    String mgMgConcentration
    String kKConcentration
    String trisTrisConcentration
    Int fastFastFolding
    String scaleScaleAccessibility
    Boolean constraintConstraint
    Boolean alignmentAlignmentMode
    Boolean convertConvertToBin
    Int duplexDuplexDistance
    String energyEnergyThreshold
    String produceProducePs
    Int windowWindowLength
  }
  command <<<
    RNAplex \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(accessibilityAccessibilityDir) then ("--accessibility-dir " +  '"' + accessibilityAccessibilityDir + '"') else ""} \
      ~{true="--binary" false="" binaryBinary} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""} \
      ~{if defined(tempTemp) then ("--temp " +  '"' + tempTemp + '"') else ""} \
      ~{if defined(interactionInteractionLength) then ("--interaction-length " +  '"' + interactionInteractionLength + '"') else ""} \
      ~{if defined(extensionExtensionCost) then ("--extension-cost " +  '"' + extensionExtensionCost + '"') else ""} \
      ~{true="--probe-mode" false="" probeProbeMode} \
      ~{if defined(probeProbeConcentration) then ("--probe-concentration " +  '"' + probeProbeConcentration + '"') else ""} \
      ~{if defined(naNaConcentration) then ("--na-concentration " +  '"' + naNaConcentration + '"') else ""} \
      ~{if defined(mgMgConcentration) then ("--mg-concentration " +  '"' + mgMgConcentration + '"') else ""} \
      ~{if defined(kKConcentration) then ("--k-concentration " +  '"' + kKConcentration + '"') else ""} \
      ~{if defined(trisTrisConcentration) then ("--tris-concentration " +  '"' + trisTrisConcentration + '"') else ""} \
      ~{if defined(fastFastFolding) then ("--fast-folding " +  '"' + fastFastFolding + '"') else ""} \
      ~{if defined(scaleScaleAccessibility) then ("--scale-accessibility " +  '"' + scaleScaleAccessibility + '"') else ""} \
      ~{true="--constraint" false="" constraintConstraint} \
      ~{true="--alignment-mode" false="" alignmentAlignmentMode} \
      ~{true="--convert-to-bin" false="" convertConvertToBin} \
      ~{if defined(duplexDuplexDistance) then ("--duplex-distance " +  '"' + duplexDuplexDistance + '"') else ""} \
      ~{if defined(energyEnergyThreshold) then ("--energy-threshold " +  '"' + energyEnergyThreshold + '"') else ""} \
      ~{if defined(produceProducePs) then ("--produce-ps " +  '"' + produceProducePs + '"') else ""} \
      ~{if defined(windowWindowLength) then ("--WindowLength " +  '"' + windowWindowLength + '"') else ""}
  >>>
}