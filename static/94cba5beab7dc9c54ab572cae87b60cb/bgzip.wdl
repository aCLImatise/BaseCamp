version 1.0

task Bgzip {
  input {
    Int offsetOffset
    Boolean stdoutStdout
    Boolean decompressDecompress
    Boolean forceForce
    Boolean indexIndex
    File indexIndexName
    Int compressCompressLevel
    Boolean reReIndex
    Boolean rebRebGzip
    Int sizeSize
    Int threadsThreads
    Boolean testTest
  }
  command <<<
    bgzip \
      ~{if defined(offsetOffset) then ("--offset " +  '"' + offsetOffset + '"') else ""} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{true="--decompress" false="" decompressDecompress} \
      ~{true="--force" false="" forceForce} \
      ~{true="--index" false="" indexIndex} \
      ~{if defined(indexIndexName) then ("--index-name " +  '"' + indexIndexName + '"') else ""} \
      ~{if defined(compressCompressLevel) then ("--compress-level " +  '"' + compressCompressLevel + '"') else ""} \
      ~{true="--reindex" false="" reReIndex} \
      ~{true="--rebgzip" false="" rebRebGzip} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--test" false="" testTest}
  >>>
}