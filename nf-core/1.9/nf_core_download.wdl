version 1.0

task NfCoreDownload {
  input {
    String releaseRelease
    Boolean singularitySingularity
    String outdirOutdir
    Boolean compressCompress
  }
  command <<<
    nf-core download \
      ~{if defined(releaseRelease) then ("--release " +  '"' + releaseRelease + '"') else ""} \
      ~{true="--singularity" false="" singularitySingularity} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--compress" false="" compressCompress}
  >>>
}