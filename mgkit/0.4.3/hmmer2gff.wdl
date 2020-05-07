version 1.0

task Hmmer2gff {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean citeCite
    Boolean manualManual
    Boolean oO
    String discardDiscard
    Boolean disableDisableEvalue
    Boolean noNoCustomProfiles
    String databaseDatabase
    String featureFeatureType
    Boolean noNoFrame
  }
  command <<<
    hmmer2gff \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--cite" false="" citeCite} \
      ~{true="--manual" false="" manualManual} \
      ~{true="-o" false="" oO} \
      ~{if defined(discardDiscard) then ("--discard " +  '"' + discardDiscard + '"') else ""} \
      ~{true="--disable-evalue" false="" disableDisableEvalue} \
      ~{true="--no-custom-profiles" false="" noNoCustomProfiles} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(featureFeatureType) then ("--feature-type " +  '"' + featureFeatureType + '"') else ""} \
      ~{true="--no-frame" false="" noNoFrame}
  >>>
}