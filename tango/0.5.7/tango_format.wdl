version 1.0

task TangoFormat {
  input {
    Boolean forceForce
    Boolean forceForceIdMap
    String taxidTaxidMap
    Int maxMaxIdleN
    String tmpdirTmpdir
    String? fastFastAFile
    String? reformattedReformatted
  }
  command <<<
    tango format \
      ~{fastFastAFile} \
      ~{true="--force" false="" forceForce} \
      ~{true="--forceidmap" false="" forceForceIdMap} \
      ~{if defined(taxidTaxidMap) then ("--taxidmap " +  '"' + taxidTaxidMap + '"') else ""} \
      ~{if defined(maxMaxIdleN) then ("--maxidlen " +  '"' + maxMaxIdleN + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{reformattedReformatted}
  >>>
}