version 1.0

task HgLoadWiggle {
  input {
    Boolean noNoBin
    Boolean noNoLoad
    Boolean noNoHistory
    Boolean oldOldTable
    Boolean tabTab
    File pathPathPrefix
    String chromChromInfoDb
    String maxMaxChromNameLength
    String referenceReference
    File tmpdirTmpdir
    String whichWhich
    String verboseVerbose
  }
  command <<<
    hgLoadWiggle \
      ~{true="-noBin" false="" noNoBin} \
      ~{true="-noLoad" false="" noNoLoad} \
      ~{true="-noHistory" false="" noNoHistory} \
      ~{true="-oldTable" false="" oldOldTable} \
      ~{true="-tab" false="" tabTab} \
      ~{if defined(pathPathPrefix) then ("-pathPrefix " +  '"' + pathPathPrefix + '"') else ""} \
      ~{if defined(chromChromInfoDb) then ("-chromInfoDb " +  '"' + chromChromInfoDb + '"') else ""} \
      ~{if defined(maxMaxChromNameLength) then ("-maxChromNameLength " +  '"' + maxMaxChromNameLength + '"') else ""} \
      ~{if defined(referenceReference) then ("- reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("-tmpDir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(whichWhich) then ("- which " +  '"' + whichWhich + '"') else ""} \
      ~{if defined(verboseVerbose) then ("-verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}