version 1.0

task RMETLDetection {
  input {
    Int minMinSupport
    Int minMinLength
    Int minMinDistance
    String threadsThreads
    String presetsPresets
    String? referenceReference
    String? tempTempDir
    String? outputOutputDir
  }
  command <<<
    rMETL detection \
      ~{referenceReference} \
      ~{if defined(minMinSupport) then ("--min_support " +  '"' + minMinSupport + '"') else ""} \
      ~{if defined(minMinLength) then ("--min_length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(minMinDistance) then ("--min_distance " +  '"' + minMinDistance + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(presetsPresets) then ("--presets " +  '"' + presetsPresets + '"') else ""} \
      ~{tempTempDir} \
      ~{outputOutputDir}
  >>>
}