version 1.0

task MapGffCoords {
  input {
    String typeType
    Directory dataData
    Directory mapMap
    Directory alignAlign
    Boolean lazyLazy
    Boolean truncateTruncate
    Boolean forceForceEntry
    Boolean verboseVerbose
    String? sourceSourceGenome
    String? sourceSourceGffFile
    String? targetTargetGenome
  }
  command <<<
    map_gff_coords \
      ~{sourceSourceGenome} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(mapMap) then ("--map " +  '"' + mapMap + '"') else ""} \
      ~{if defined(alignAlign) then ("--align " +  '"' + alignAlign + '"') else ""} \
      ~{true="--lazy" false="" lazyLazy} \
      ~{true="--truncate" false="" truncateTruncate} \
      ~{true="--force-entry" false="" forceForceEntry} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{sourceSourceGffFile} \
      ~{targetTargetGenome}
  >>>
}