version 1.0

task KrakenuniqDownload {
  input {
    Directory oO
    Directory dbDb
    Boolean threadsThreads
    Boolean rsyncRsync
    Boolean overwriteOverwrite
    Boolean verboseVerbose
    Boolean dustDust
    String minMinSeqLen
    String searchSearch
    String acAc
    String mappingMappingFile
    String retRetMode
    String retRetType
    String taxTaxA
    Boolean excludeExcludeEnvironmentalTaxA
    String fnaFna
    Boolean uU
  }
  command <<<
    krakenuniq-download \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--rsync" false="" rsyncRsync} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--dust" false="" dustDust} \
      ~{if defined(minMinSeqLen) then ("--min-seq-len " +  '"' + minMinSeqLen + '"') else ""} \
      ~{if defined(searchSearch) then ("--search " +  '"' + searchSearch + '"') else ""} \
      ~{if defined(acAc) then ("--ac " +  '"' + acAc + '"') else ""} \
      ~{if defined(mappingMappingFile) then ("--mapping-file " +  '"' + mappingMappingFile + '"') else ""} \
      ~{if defined(retRetMode) then ("--retmode " +  '"' + retRetMode + '"') else ""} \
      ~{if defined(retRetType) then ("--rettype " +  '"' + retRetType + '"') else ""} \
      ~{if defined(taxTaxA) then ("--taxa " +  '"' + taxTaxA + '"') else ""} \
      ~{true="--exclude-environmental-taxa" false="" excludeExcludeEnvironmentalTaxA} \
      ~{if defined(fnaFna) then ("--fna " +  '"' + fnaFna + '"') else ""} \
      ~{true="-u" false="" uU}
  >>>
}