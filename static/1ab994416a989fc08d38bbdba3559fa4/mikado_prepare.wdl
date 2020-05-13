version 1.0

task MikadoPrepare {
  input {
    String startStartMethod
    Boolean strandStrandSpecific
    String strandStrandSpecificAssemblies
    String listList
    String logLog
    Boolean lenientLenient
    Int minimumMinimumCdnaLength
    Int maxMaxIntronSize
    String procsProcs
    Boolean stripStripCds
    String labelsLabels
    Boolean singleSingleThread
    String outputOutputDir
    String outOut
    String outOutFastA
    String jsonJsonConf
    Boolean keepKeepRedundant
    String seedSeed
    String? gffGff
  }
  command <<<
    mikado prepare \
      ~{gffGff} \
      ~{if defined(startStartMethod) then ("--start-method " +  '"' + startStartMethod + '"') else ""} \
      ~{true="--strand-specific" false="" strandStrandSpecific} \
      ~{if defined(strandStrandSpecificAssemblies) then ("--strand-specific-assemblies " +  '"' + strandStrandSpecificAssemblies + '"') else ""} \
      ~{if defined(listList) then ("--list " +  '"' + listList + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--lenient" false="" lenientLenient} \
      ~{if defined(minimumMinimumCdnaLength) then ("--minimum-cdna-length " +  '"' + minimumMinimumCdnaLength + '"') else ""} \
      ~{if defined(maxMaxIntronSize) then ("--max-intron-size " +  '"' + maxMaxIntronSize + '"') else ""} \
      ~{if defined(procsProcs) then ("--procs " +  '"' + procsProcs + '"') else ""} \
      ~{true="--strip_cds" false="" stripStripCds} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{true="--single-thread" false="" singleSingleThread} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutFastA) then ("--out_fasta " +  '"' + outOutFastA + '"') else ""} \
      ~{if defined(jsonJsonConf) then ("--json-conf " +  '"' + jsonJsonConf + '"') else ""} \
      ~{true="--keep-redundant" false="" keepKeepRedundant} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}