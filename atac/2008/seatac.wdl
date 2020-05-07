version 1.0

task Seatac {
  input {
    String numNumThreads
    String loaderLoaderHighWaterMark
    String loaderLoaderSleep
    Boolean loaderLoaderWarnings
    String searchSearchSleep
    String writerWriterHighWaterMark
    String writerWriterSleep
    Boolean writerWriterWarnings
    String useUseTables
    String buildBuildTables
    String filterFilterName
    String filterFilterOpts
    String maskMask
    String onlyOnly
    String streamStream
    String tableTable
    Boolean useUse
    File useUse
    Boolean verboseVerbose
    String outputOutput
    String statsStats
  }
  command <<<
    seatac \
      ~{if defined(numNumThreads) then ("-numthreads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(loaderLoaderHighWaterMark) then ("-loaderhighwatermark " +  '"' + loaderLoaderHighWaterMark + '"') else ""} \
      ~{if defined(loaderLoaderSleep) then ("-loadersleep " +  '"' + loaderLoaderSleep + '"') else ""} \
      ~{true="-loaderwarnings" false="" loaderLoaderWarnings} \
      ~{if defined(searchSearchSleep) then ("-searchsleep " +  '"' + searchSearchSleep + '"') else ""} \
      ~{if defined(writerWriterHighWaterMark) then ("-writerhighwatermark " +  '"' + writerWriterHighWaterMark + '"') else ""} \
      ~{if defined(writerWriterSleep) then ("-writersleep " +  '"' + writerWriterSleep + '"') else ""} \
      ~{true="-writerwarnings" false="" writerWriterWarnings} \
      ~{if defined(useUseTables) then ("-usetables " +  '"' + useUseTables + '"') else ""} \
      ~{if defined(buildBuildTables) then ("-buildtables " +  '"' + buildBuildTables + '"') else ""} \
      ~{if defined(filterFilterName) then ("-filtername " +  '"' + filterFilterName + '"') else ""} \
      ~{if defined(filterFilterOpts) then ("-filteropts " +  '"' + filterFilterOpts + '"') else ""} \
      ~{if defined(maskMask) then ("-mask " +  '"' + maskMask + '"') else ""} \
      ~{if defined(onlyOnly) then ("-only " +  '"' + onlyOnly + '"') else ""} \
      ~{if defined(streamStream) then ("-stream " +  '"' + streamStream + '"') else ""} \
      ~{if defined(tableTable) then ("-table " +  '"' + tableTable + '"') else ""} \
      ~{true="-use" false="" useUse} \
      ~{if defined(useUse) then ("-use " +  '"' + useUse + '"') else ""} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(statsStats) then ("-stats " +  '"' + statsStats + '"') else ""}
  >>>
}