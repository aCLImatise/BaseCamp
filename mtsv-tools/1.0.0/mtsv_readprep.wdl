version 1.0

task MtsvReadprep {
  input {
    Boolean lcdLcd
    Boolean lcdLcdQual
    Boolean vV
    String adaptersAdapters
    String adapterAdapterTolerance
    String outOut
    String threadsThreads
    String qualityQualityMin
    String qualityQualityThreshold
    String segmentSegment
  }
  command <<<
    mtsv-readprep \
      ~{true="--lcd" false="" lcdLcd} \
      ~{true="--lcdqual" false="" lcdLcdQual} \
      ~{true="-v" false="" vV} \
      ~{if defined(adaptersAdapters) then ("--adapters " +  '"' + adaptersAdapters + '"') else ""} \
      ~{if defined(adapterAdapterTolerance) then ("--adapter-tolerance " +  '"' + adapterAdapterTolerance + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(qualityQualityMin) then ("--quality_min " +  '"' + qualityQualityMin + '"') else ""} \
      ~{if defined(qualityQualityThreshold) then ("--quality_threshold " +  '"' + qualityQualityThreshold + '"') else ""} \
      ~{if defined(segmentSegment) then ("--segment " +  '"' + segmentSegment + '"') else ""}
  >>>
}