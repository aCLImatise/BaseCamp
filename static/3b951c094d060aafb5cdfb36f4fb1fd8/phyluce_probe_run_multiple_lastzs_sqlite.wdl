version 1.0

task PhyluceProbeRunMultipleLastzsSqlite {
  input {
    String dbDb
    String outputOutput
    String probeProbeFile
    Array[String]+ chromoChromoList
    Array[String]+ scaffoldScaffoldList
    Boolean appendAppend
    Boolean noNoDir
    String coresCores
    String genomeGenomeBasePath
    String coverageCoverage
    String identityIdentity
  }
  command <<<
    phyluce_probe_run_multiple_lastzs_sqlite \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(probeProbeFile) then ("--probefile " +  '"' + probeProbeFile + '"') else ""} \
      ~{if defined(chromoChromoList) then ("--chromolist " +  '"' + chromoChromoList + '"') else ""} \
      ~{if defined(scaffoldScaffoldList) then ("--scaffoldlist " +  '"' + scaffoldScaffoldList + '"') else ""} \
      ~{true="--append" false="" appendAppend} \
      ~{true="--no-dir" false="" noNoDir} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(genomeGenomeBasePath) then ("--genome-base-path " +  '"' + genomeGenomeBasePath + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(identityIdentity) then ("--identity " +  '"' + identityIdentity + '"') else ""}
  >>>
}