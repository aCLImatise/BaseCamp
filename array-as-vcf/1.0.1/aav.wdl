version 1.0

task Aav {
  input {
    File pathPath
    String buildBuild
    String sampleSampleName
    String chrChrPrefix
    String lookupLookupTable
    String dumpDump
    String encodingEncoding
    Array[String]+ excludeExcludeAssays
    Boolean noNoEnsemblLookup
    String logLogLevel
  }
  command <<<
    aav \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""} \
      ~{if defined(buildBuild) then ("--build " +  '"' + buildBuild + '"') else ""} \
      ~{if defined(sampleSampleName) then ("--sample-name " +  '"' + sampleSampleName + '"') else ""} \
      ~{if defined(chrChrPrefix) then ("--chr-prefix " +  '"' + chrChrPrefix + '"') else ""} \
      ~{if defined(lookupLookupTable) then ("--lookup-table " +  '"' + lookupLookupTable + '"') else ""} \
      ~{if defined(dumpDump) then ("--dump " +  '"' + dumpDump + '"') else ""} \
      ~{if defined(encodingEncoding) then ("--encoding " +  '"' + encodingEncoding + '"') else ""} \
      ~{if defined(excludeExcludeAssays) then ("--exclude-assays " +  '"' + excludeExcludeAssays + '"') else ""} \
      ~{true="--no-ensembl-lookup" false="" noNoEnsemblLookup} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""}
  >>>
}