version 1.0

task GenomedataEraseData {
  input {
    Array[String]+ trackTrackName
    Boolean verboseVerbose
    String? gdGdArchive
  }
  command <<<
    genomedata-erase-data \
      ~{gdGdArchive} \
      ~{if defined(trackTrackName) then ("--trackname " +  '"' + trackTrackName + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}