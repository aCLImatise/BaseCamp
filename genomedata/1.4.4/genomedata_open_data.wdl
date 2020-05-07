version 1.0

task GenomedataOpenData {
  input {
    Boolean vV
    Boolean verboseVerbose
    String trackTrackNames
    String? gdGdArchive
  }
  command <<<
    genomedata-open-data \
      ~{gdGdArchive} \
      ~{true="-v" false="" vV} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(trackTrackNames) then ("--tracknames " +  '"' + trackTrackNames + '"') else ""}
  >>>
}