version 1.0

task Lrunzip {
  input {
    Boolean checkCheck
    Boolean decompressDecompress
    Boolean encryptEncrypt
    Boolean hashHash
    Boolean infoInfo
    Boolean quietQuiet
    Boolean testTest
    Boolean vV
    Boolean deleteDelete
    Boolean forceForce
    Boolean keepKeepBroken
    File outfileOutfile
    Directory outdirOutdir
    String suffixSuffix
    Boolean bzip2Bzip2
    Boolean gzipGzip
    Boolean lzoLzo
    Boolean noNoCompress
    Boolean zZPaq
    String levelLevel
    String niceNiceLevel
    String threadsThreads
    Int maxMaxRam
    Boolean thresholdThreshold
    Boolean unlimitedUnlimited
    Int windowWindow
    String? lrLrZip
    File? fileFile
  }
  command <<<
    lrunzip \
      ~{lrLrZip} \
      ~{true="--check" false="" checkCheck} \
      ~{true="--decompress" false="" decompressDecompress} \
      ~{true="--encrypt" false="" encryptEncrypt} \
      ~{true="--hash" false="" hashHash} \
      ~{true="--info" false="" infoInfo} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--test" false="" testTest} \
      ~{true="-v" false="" vV} \
      ~{true="--delete" false="" deleteDelete} \
      ~{true="--force" false="" forceForce} \
      ~{true="--keep-broken" false="" keepKeepBroken} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{true="--bzip2" false="" bzip2Bzip2} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--lzo" false="" lzoLzo} \
      ~{true="--no-compress" false="" noNoCompress} \
      ~{true="--zpaq" false="" zZPaq} \
      ~{if defined(levelLevel) then ("--level " +  '"' + levelLevel + '"') else ""} \
      ~{if defined(niceNiceLevel) then ("--nice-level " +  '"' + niceNiceLevel + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(maxMaxRam) then ("--maxram " +  '"' + maxMaxRam + '"') else ""} \
      ~{true="--threshold" false="" thresholdThreshold} \
      ~{true="--unlimited" false="" unlimitedUnlimited} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{fileFile}
  >>>
}