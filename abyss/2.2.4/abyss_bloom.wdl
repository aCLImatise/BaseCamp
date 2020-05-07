version 1.0

task AbyssBloom {
  input {
    String kmKmEr
    Boolean verboseVerbose
    String bloomBloomSize
    String bufferBufferSize
    String threadsThreads
    String hashHashSeed
    String numNumHashes
    String levelsLevels
    Boolean inInItLevel
    Boolean chastityChastity
    Boolean noNoChastity
    Boolean trimTrimMasked
    Boolean noNoTrimMasked
    String numNumLocks
    String trimTrimQuality
    String bloomBloomType
    Boolean standardStandardQuality
    Boolean illuminaIlluminaQuality
    String windowWindow
    Boolean methodMethod
    String depthDepth
    String rootRoot
    File rootRootFastA
    String fastFastAAttr
    String nodeNodeAttr
    String bloomBloomAttr
    Boolean inverseInverse
    Boolean bedBed
    Boolean fastFastA
    Boolean rawRaw
  }
  command <<<
    abyss-bloom \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(bloomBloomSize) then ("--bloom-size " +  '"' + bloomBloomSize + '"') else ""} \
      ~{if defined(bufferBufferSize) then ("--buffer-size " +  '"' + bufferBufferSize + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(hashHashSeed) then ("--hash-seed " +  '"' + hashHashSeed + '"') else ""} \
      ~{if defined(numNumHashes) then ("--num-hashes " +  '"' + numNumHashes + '"') else ""} \
      ~{if defined(levelsLevels) then ("--levels " +  '"' + levelsLevels + '"') else ""} \
      ~{true="--init-level" false="" inInItLevel} \
      ~{true="--chastity" false="" chastityChastity} \
      ~{true="--no-chastity" false="" noNoChastity} \
      ~{true="--trim-masked" false="" trimTrimMasked} \
      ~{true="--no-trim-masked" false="" noNoTrimMasked} \
      ~{if defined(numNumLocks) then ("--num-locks " +  '"' + numNumLocks + '"') else ""} \
      ~{if defined(trimTrimQuality) then ("--trim-quality " +  '"' + trimTrimQuality + '"') else ""} \
      ~{if defined(bloomBloomType) then ("--bloom-type " +  '"' + bloomBloomType + '"') else ""} \
      ~{true="--standard-quality" false="" standardStandardQuality} \
      ~{true="--illumina-quality" false="" illuminaIlluminaQuality} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{true="--method" false="" methodMethod} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""} \
      ~{if defined(rootRoot) then ("--root " +  '"' + rootRoot + '"') else ""} \
      ~{if defined(rootRootFastA) then ("--root-fasta " +  '"' + rootRootFastA + '"') else ""} \
      ~{if defined(fastFastAAttr) then ("--fasta-attr " +  '"' + fastFastAAttr + '"') else ""} \
      ~{if defined(nodeNodeAttr) then ("--node-attr " +  '"' + nodeNodeAttr + '"') else ""} \
      ~{if defined(bloomBloomAttr) then ("--bloom-attr " +  '"' + bloomBloomAttr + '"') else ""} \
      ~{true="--inverse" false="" inverseInverse} \
      ~{true="--bed" false="" bedBed} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--raw" false="" rawRaw}
  >>>
}