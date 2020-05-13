version 1.0

task Vsearch {
  input {
    Boolean bzip2Bzip2Decompress
    Int fastFastAWidth
    Boolean gzipGzipDecompress
    File logLog
    Int maxMaxSeqLength
    Int minMinSeqLength
    Boolean noNoProgress
    Boolean notNotRunCLabels
    Boolean quietQuiet
    Int threadsThreads
    File clusterClusterFast
    File clusterClusterSize
    File clusterClusterSmallMem
    File clusterClusterUNoise
    File allAllPairsGlobal
    File alnAlnOut
    Boolean acceptAcceptAll
    String? dataData
    String? parametersParameters
    String? outputOutput
    String? outputOutput
    String? parametersParameters
    String? outputOutput
    String? parametersParameters
    String? outputOutput
    String? parametersParameters
    String? outputOutput
    String? parametersParameters
    String? parametersParameters
    String? outputOutput
    String? parametersParameters
    String? outputOutput
    String? parametersParameters
    String? outputOutput
    String? dataData
    String? outputOutput
    String? dataData
    String? parametersParameters
    String? outputOutput
    String? parametersParameters
    String? outputOutput
    String? parametersParameters
    String? outputOutput
    String? dataData
    String? parametersParameters
    String? outputOutput
    String? parametersParameters
    String? outputOutput
    String? parametersParameters
    String? outputOutput
    String? parametersParameters
    String? outputOutput
    String? parametersParameters
    String? outputOutput
    String? parametersParameters
    String? outputOutput
  }
  command <<<
    vsearch \
      ~{dataData} \
      ~{outputOutput} \
      ~{parametersParameters} \
      ~{parametersParameters} \
      ~{parametersParameters} \
      ~{parametersParameters} \
      ~{parametersParameters} \
      ~{parametersParameters} \
      ~{parametersParameters} \
      ~{dataData} \
      ~{dataData} \
      ~{parametersParameters} \
      ~{parametersParameters} \
      ~{dataData} \
      ~{parametersParameters} \
      ~{parametersParameters} \
      ~{parametersParameters} \
      ~{parametersParameters} \
      ~{parametersParameters} \
      ~{true="--bzip2_decompress" false="" bzip2Bzip2Decompress} \
      ~{if defined(fastFastAWidth) then ("--fasta_width " +  '"' + fastFastAWidth + '"') else ""} \
      ~{true="--gzip_decompress" false="" gzipGzipDecompress} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(maxMaxSeqLength) then ("--maxseqlength " +  '"' + maxMaxSeqLength + '"') else ""} \
      ~{if defined(minMinSeqLength) then ("--minseqlength " +  '"' + minMinSeqLength + '"') else ""} \
      ~{true="--no_progress" false="" noNoProgress} \
      ~{true="--notrunclabels" false="" notNotRunCLabels} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(clusterClusterFast) then ("--cluster_fast " +  '"' + clusterClusterFast + '"') else ""} \
      ~{if defined(clusterClusterSize) then ("--cluster_size " +  '"' + clusterClusterSize + '"') else ""} \
      ~{if defined(clusterClusterSmallMem) then ("--cluster_smallmem " +  '"' + clusterClusterSmallMem + '"') else ""} \
      ~{if defined(clusterClusterUNoise) then ("--cluster_unoise " +  '"' + clusterClusterUNoise + '"') else ""} \
      ~{if defined(allAllPairsGlobal) then ("--allpairs_global " +  '"' + allAllPairsGlobal + '"') else ""} \
      ~{if defined(alnAlnOut) then ("--alnout " +  '"' + alnAlnOut + '"') else ""} \
      ~{true="--acceptall" false="" acceptAcceptAll} \
      ~{parametersParameters} \
      ~{outputOutput} \
      ~{outputOutput} \
      ~{outputOutput} \
      ~{outputOutput} \
      ~{outputOutput} \
      ~{outputOutput} \
      ~{outputOutput} \
      ~{parametersParameters} \
      ~{outputOutput} \
      ~{outputOutput} \
      ~{parametersParameters} \
      ~{outputOutput} \
      ~{outputOutput} \
      ~{outputOutput} \
      ~{outputOutput} \
      ~{outputOutput} \
      ~{outputOutput} \
      ~{outputOutput} \
      ~{outputOutput}
  >>>
}