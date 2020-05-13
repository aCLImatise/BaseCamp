version 1.0

task IsectMercatorAlignmentGff {
  input {
    String typeType
    Directory dataData
    Directory mapMap
    Directory alignAlign
    Boolean lazyLazy
    Boolean truncateTruncate
    Boolean stockholmStockholm
    Boolean verboseVerbose
    String? genomeGenome
    String? gffGffFile
  }
  command <<<
    isect_mercator_alignment_gff \
      ~{genomeGenome} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(mapMap) then ("--map " +  '"' + mapMap + '"') else ""} \
      ~{if defined(alignAlign) then ("--align " +  '"' + alignAlign + '"') else ""} \
      ~{true="--lazy" false="" lazyLazy} \
      ~{true="--truncate" false="" truncateTruncate} \
      ~{true="--stockholm" false="" stockholmStockholm} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{gffGffFile}
  >>>
}