version 1.0

task RMETLRealignment {
  input {
    String threadsThreads
    String presetsPresets
    String subSubReadLength
    String subSubReadCorridor
    String? fastFastA
    String? meMeRef
    String? outputOutput
  }
  command <<<
    rMETL realignment \
      ~{fastFastA} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(presetsPresets) then ("--presets " +  '"' + presetsPresets + '"') else ""} \
      ~{if defined(subSubReadLength) then ("--subread_length " +  '"' + subSubReadLength + '"') else ""} \
      ~{if defined(subSubReadCorridor) then ("--subread_corridor " +  '"' + subSubReadCorridor + '"') else ""} \
      ~{meMeRef} \
      ~{outputOutput}
  >>>
}