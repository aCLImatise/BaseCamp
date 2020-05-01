version 1.0

task Seagen {
  input {
    String numNumThreads
    String loaderLoaderQueue
    String loaderLoaderSleep
    Boolean loaderLoaderWarnings
    String searchSearchSleep
    String writerWriterQueue
    String writerWriterSleep
    Boolean writerWriterWarnings
    String buildBuildTables
    String useUseTables
    String maskMask
    String onlyOnly
    String cdnaCdna
    Boolean streamStream
    String genomicGenomic
    Boolean tableTable
    Boolean useUse
    File useUse
    Boolean verboseVerbose
    Boolean binaryBinary
    String outputOutput
    String countCount
  }
  command <<<
    seagen \
      ~{if defined(numNumThreads) then ("-numthreads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(loaderLoaderQueue) then ("-loaderqueue " +  '"' + loaderLoaderQueue + '"') else ""} \
      ~{if defined(loaderLoaderSleep) then ("-loadersleep " +  '"' + loaderLoaderSleep + '"') else ""} \
      ~{true="-loaderwarnings" false="" loaderLoaderWarnings} \
      ~{if defined(searchSearchSleep) then ("-searchsleep " +  '"' + searchSearchSleep + '"') else ""} \
      ~{if defined(writerWriterQueue) then ("-writerqueue " +  '"' + writerWriterQueue + '"') else ""} \
      ~{if defined(writerWriterSleep) then ("-writersleep " +  '"' + writerWriterSleep + '"') else ""} \
      ~{true="-writerwarnings" false="" writerWriterWarnings} \
      ~{if defined(buildBuildTables) then ("-buildtables " +  '"' + buildBuildTables + '"') else ""} \
      ~{if defined(useUseTables) then ("-usetables " +  '"' + useUseTables + '"') else ""} \
      ~{if defined(maskMask) then ("-mask " +  '"' + maskMask + '"') else ""} \
      ~{if defined(onlyOnly) then ("-only " +  '"' + onlyOnly + '"') else ""} \
      ~{if defined(cdnaCdna) then ("-cdna " +  '"' + cdnaCdna + '"') else ""} \
      ~{true="-stream" false="" streamStream} \
      ~{if defined(genomicGenomic) then ("-genomic " +  '"' + genomicGenomic + '"') else ""} \
      ~{true="-table" false="" tableTable} \
      ~{true="-use" false="" useUse} \
      ~{if defined(useUse) then ("-use " +  '"' + useUse + '"') else ""} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-binary" false="" binaryBinary} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(countCount) then ("-count " +  '"' + countCount + '"') else ""}
  >>>
}