version 1.0

task Vina {
  input {
    String receptorReceptor
    String flexFlex
    String ligandLigand
    String centerCenterX
    String centerCenterY
    String centerCenterZ
    String sizeSizeX
    String sizeSizeY
    String sizeSizeZ
    String outOut
    String logLog
    String cpuCpu
    String seedSeed
    String exhaustiveExhaustiveNess
    String numNumModes
    String energyEnergyRange
    String configConfig
    Boolean helpHelpAdvanced
  }
  command <<<
    vina \
      ~{if defined(receptorReceptor) then ("--receptor " +  '"' + receptorReceptor + '"') else ""} \
      ~{if defined(flexFlex) then ("--flex " +  '"' + flexFlex + '"') else ""} \
      ~{if defined(ligandLigand) then ("--ligand " +  '"' + ligandLigand + '"') else ""} \
      ~{if defined(centerCenterX) then ("--center_x " +  '"' + centerCenterX + '"') else ""} \
      ~{if defined(centerCenterY) then ("--center_y " +  '"' + centerCenterY + '"') else ""} \
      ~{if defined(centerCenterZ) then ("--center_z " +  '"' + centerCenterZ + '"') else ""} \
      ~{if defined(sizeSizeX) then ("--size_x " +  '"' + sizeSizeX + '"') else ""} \
      ~{if defined(sizeSizeY) then ("--size_y " +  '"' + sizeSizeY + '"') else ""} \
      ~{if defined(sizeSizeZ) then ("--size_z " +  '"' + sizeSizeZ + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(exhaustiveExhaustiveNess) then ("--exhaustiveness " +  '"' + exhaustiveExhaustiveNess + '"') else ""} \
      ~{if defined(numNumModes) then ("--num_modes " +  '"' + numNumModes + '"') else ""} \
      ~{if defined(energyEnergyRange) then ("--energy_range " +  '"' + energyEnergyRange + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--help_advanced" false="" helpHelpAdvanced}
  >>>
}