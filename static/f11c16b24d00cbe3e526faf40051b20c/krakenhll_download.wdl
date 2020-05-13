version 1.0

task KrakenhllDownload {
  input {
    Directory oO
    Directory dbDb
    Boolean threadsThreads
    Boolean rsyncRsync
    Boolean overwriteOverwrite
    Boolean verboseVerbose
    String termTerm
    String mappingsMappings
    String retRetMode
    String retRetType
    String fnaFna
    Boolean uU
    Boolean lL
    Boolean dustDust
    Boolean includeIncludeViralNeighbors
  }
  command <<<
    krakenhll-download \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--rsync" false="" rsyncRsync} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(termTerm) then ("--term " +  '"' + termTerm + '"') else ""} \
      ~{if defined(mappingsMappings) then ("--mappings " +  '"' + mappingsMappings + '"') else ""} \
      ~{if defined(retRetMode) then ("--retmode " +  '"' + retRetMode + '"') else ""} \
      ~{if defined(retRetType) then ("--rettype " +  '"' + retRetType + '"') else ""} \
      ~{if defined(fnaFna) then ("--fna " +  '"' + fnaFna + '"') else ""} \
      ~{true="-u" false="" uU} \
      ~{true="-l" false="" lL} \
      ~{true="--dust" false="" dustDust} \
      ~{true="--include-viral-neighbors" false="" includeIncludeViralNeighbors}
  >>>
}