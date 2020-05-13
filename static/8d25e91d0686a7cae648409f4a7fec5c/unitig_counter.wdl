version 1.0

task UnitigCounter {
  input {
    Boolean gzipGzip
    Boolean strainsStrains
    Boolean kK
    Boolean outputOutput
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean versionVersion
  }
  command <<<
    unitig-counter \
      ~{true="-gzip" false="" gzipGzip} \
      ~{true="-strains" false="" strainsStrains} \
      ~{true="-k" false="" kK} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-version" false="" versionVersion}
  >>>
}