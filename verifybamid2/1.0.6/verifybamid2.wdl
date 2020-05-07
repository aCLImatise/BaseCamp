version 1.0

task Verifybamid2 {
  input {
    Boolean bamBamFile
    Boolean pilePileUpFile
    Boolean referenceReference
    Boolean svdSvdPrefix
    Boolean outputOutput
    Boolean udUdPath
    Boolean bedBedPath
  }
  command <<<
    verifybamid2 \
      ~{true="--BamFile" false="" bamBamFile} \
      ~{true="--PileupFile" false="" pilePileUpFile} \
      ~{true="--Reference" false="" referenceReference} \
      ~{true="--SVDPrefix" false="" svdSvdPrefix} \
      ~{true="--Output" false="" outputOutput} \
      ~{true="--UDPath" false="" udUdPath} \
      ~{true="--BedPath" false="" bedBedPath}
  >>>
}