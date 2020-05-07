version 1.0

task PBcR {
  input {
    Int lengthLength
    Int partitionsPartitions
    String libraryLibraryName
    Int threadsThreads
    Boolean shortShortReads
    Boolean genomeGenomeSize
    Int maxMaxCoverage
  }
  command <<<
    PBcR \
      ~{if defined(lengthLength) then ("-length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(partitionsPartitions) then ("-partitions " +  '"' + partitionsPartitions + '"') else ""} \
      ~{if defined(libraryLibraryName) then ("-libraryname " +  '"' + libraryLibraryName + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="-shortReads" false="" shortShortReads} \
      ~{true="-genomeSize" false="" genomeGenomeSize} \
      ~{if defined(maxMaxCoverage) then ("-maxCoverage " +  '"' + maxMaxCoverage + '"') else ""}
  >>>
}