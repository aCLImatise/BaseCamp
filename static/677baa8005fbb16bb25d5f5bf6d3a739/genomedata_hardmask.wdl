version 1.0

task GenomedataHardmask {
  input {
    Array[String]+ trackTrackName
    String hardHardMask
    Boolean noNoClose
    Boolean dryDryRun
    Boolean verboseVerbose
    String? maskMaskFile
    String? gdGdArchive
  }
  command <<<
    genomedata-hardmask \
      ~{maskMaskFile} \
      ~{if defined(trackTrackName) then ("--trackname " +  '"' + trackTrackName + '"') else ""} \
      ~{if defined(hardHardMask) then ("--hardmask " +  '"' + hardHardMask + '"') else ""} \
      ~{true="--no-close" false="" noNoClose} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{gdGdArchive}
  >>>
}