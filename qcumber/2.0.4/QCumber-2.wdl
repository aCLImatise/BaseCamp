version 1.0

task QCumber2 {
  input {
    String threadsThreads
    String configConfig
    Array[String]+ inputInput
    String readRead1
    String readRead2
    String technologyTechnology
    String adapterAdapter
    String referenceReference
    String indexIndex
    String krakenKrakenDb
    String illuminaIlluminaClip
    Int minMinLen
    String trimTrimOption
    String trimTrimBetterThreshold
  }
  command <<<
    QCumber-2 \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(readRead1) then ("--read1 " +  '"' + readRead1 + '"') else ""} \
      ~{if defined(readRead2) then ("--read2 " +  '"' + readRead2 + '"') else ""} \
      ~{if defined(technologyTechnology) then ("--technology " +  '"' + technologyTechnology + '"') else ""} \
      ~{if defined(adapterAdapter) then ("--adapter " +  '"' + adapterAdapter + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(krakenKrakenDb) then ("--kraken_db " +  '"' + krakenKrakenDb + '"') else ""} \
      ~{if defined(illuminaIlluminaClip) then ("--illuminaclip " +  '"' + illuminaIlluminaClip + '"') else ""} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(trimTrimOption) then ("--trimOption " +  '"' + trimTrimOption + '"') else ""} \
      ~{if defined(trimTrimBetterThreshold) then ("--trimBetter_threshold " +  '"' + trimTrimBetterThreshold + '"') else ""}
  >>>
}