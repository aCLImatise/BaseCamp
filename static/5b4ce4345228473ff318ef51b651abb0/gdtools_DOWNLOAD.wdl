version 1.0

task GdtoolsDOWNLOAD {
  input {
    String loginLogin
    String downloadDownloadDir
    String genomeGenomeDiffDir
    Boolean testTest
    Boolean referenceReferenceOnly
    Boolean unUnGzip
  }
  command <<<
    gdtools DOWNLOAD \
      ~{if defined(loginLogin) then ("--login " +  '"' + loginLogin + '"') else ""} \
      ~{if defined(downloadDownloadDir) then ("--download-dir " +  '"' + downloadDownloadDir + '"') else ""} \
      ~{if defined(genomeGenomeDiffDir) then ("--genome-diff-dir " +  '"' + genomeGenomeDiffDir + '"') else ""} \
      ~{true="--test" false="" testTest} \
      ~{true="--reference-only" false="" referenceReferenceOnly} \
      ~{true="--ungzip" false="" unUnGzip}
  >>>
}