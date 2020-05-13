version 1.0

task Megalodon {
  input {
    String guppyGuppyConfig
    String guppyGuppyServerPath
    String guppyGuppyServerPort
    String outputOutputDirectory
    Boolean overwriteOverwrite
    String mappingsMappingsFormat
    String referenceReference
    Boolean haploidHaploid
    String variantVariantFilename
    String variantVariantCalibrationFilename
    String modModMotif
    String modModCalibrationFilename
    Boolean helpHelpLong
    String processesProcesses
    Array[String]+ devicesDevices
    String verboseVerboseReadProgress
    String? fast5sFast5sDir
  }
  command <<<
    megalodon \
      ~{fast5sFast5sDir} \
      ~{if defined(guppyGuppyConfig) then ("--guppy-config " +  '"' + guppyGuppyConfig + '"') else ""} \
      ~{if defined(guppyGuppyServerPath) then ("--guppy-server-path " +  '"' + guppyGuppyServerPath + '"') else ""} \
      ~{if defined(guppyGuppyServerPort) then ("--guppy-server-port " +  '"' + guppyGuppyServerPort + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{if defined(mappingsMappingsFormat) then ("--mappings-format " +  '"' + mappingsMappingsFormat + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--haploid" false="" haploidHaploid} \
      ~{if defined(variantVariantFilename) then ("--variant-filename " +  '"' + variantVariantFilename + '"') else ""} \
      ~{if defined(variantVariantCalibrationFilename) then ("--variant-calibration-filename " +  '"' + variantVariantCalibrationFilename + '"') else ""} \
      ~{if defined(modModMotif) then ("--mod-motif " +  '"' + modModMotif + '"') else ""} \
      ~{if defined(modModCalibrationFilename) then ("--mod-calibration-filename " +  '"' + modModCalibrationFilename + '"') else ""} \
      ~{true="--help-long" false="" helpHelpLong} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(devicesDevices) then ("--devices " +  '"' + devicesDevices + '"') else ""} \
      ~{if defined(verboseVerboseReadProgress) then ("--verbose-read-progress " +  '"' + verboseVerboseReadProgress + '"') else ""}
  >>>
}