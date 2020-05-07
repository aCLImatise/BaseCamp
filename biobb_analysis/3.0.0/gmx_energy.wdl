version 1.0

task GmxEnergy {
  input {
    String configConfig
    String inputInputEnergyPath
    String outputOutputXVgPath
  }
  command <<<
    gmx_energy \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(inputInputEnergyPath) then ("--input_energy_path " +  '"' + inputInputEnergyPath + '"') else ""} \
      ~{if defined(outputOutputXVgPath) then ("--output_xvg_path " +  '"' + outputOutputXVgPath + '"') else ""}
  >>>
}