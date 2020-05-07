version 1.0

task MapCoords {
  input {
    Directory dataData
    Directory mapMap
    Directory alignAlign
    Boolean lazyLazy
    Boolean truncateTruncate
    String? sourceSourceGenome
    String? chromosomeChromosome
    String? startStart
    String? endEnd
    String? strandStrand
    String? targetTargetGenome
  }
  command <<<
    map_coords \
      ~{sourceSourceGenome} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(mapMap) then ("--map " +  '"' + mapMap + '"') else ""} \
      ~{if defined(alignAlign) then ("--align " +  '"' + alignAlign + '"') else ""} \
      ~{true="--lazy" false="" lazyLazy} \
      ~{true="--truncate" false="" truncateTruncate} \
      ~{chromosomeChromosome} \
      ~{startStart} \
      ~{endEnd} \
      ~{strandStrand} \
      ~{targetTargetGenome}
  >>>
}