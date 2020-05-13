version 1.0

task OvStoreDump {
  input {
    String sS
    String oO
    Boolean overlapsOverlaps
    Boolean picturePicture
    Boolean metadataMetadata
    Boolean countsCounts
    Boolean erateErateLen
    String prefixPrefix
    Boolean rawRaw
    Boolean obtObt
    Boolean utgUtg
    Boolean coordsCoords
    Boolean hangsHangs
    Boolean unalignedUnaligned
    Boolean pafPaf
    Boolean gfaGfa
    Boolean binaryBinary
    Boolean no5pNo5p
    Boolean no3pNo3p
    Boolean noNoContainer
    Boolean noNoContained
    Boolean noNoRedundant
    String queryQuery
    Int erateErate
    Int lengthLength
    String bogartBogart
    Boolean noNoBogartContained
    String noNoBogartCoverageGap
    Boolean noNoBogartLopsided
    Boolean noNoBogartSpur
  }
  command <<<
    ovStoreDump \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{true="-overlaps" false="" overlapsOverlaps} \
      ~{true="-picture" false="" picturePicture} \
      ~{true="-metadata" false="" metadataMetadata} \
      ~{true="-counts" false="" countsCounts} \
      ~{true="-eratelen" false="" erateErateLen} \
      ~{if defined(prefixPrefix) then ("-prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="-raw" false="" rawRaw} \
      ~{true="-obt" false="" obtObt} \
      ~{true="-utg" false="" utgUtg} \
      ~{true="-coords" false="" coordsCoords} \
      ~{true="-hangs" false="" hangsHangs} \
      ~{true="-unaligned" false="" unalignedUnaligned} \
      ~{true="-paf" false="" pafPaf} \
      ~{true="-gfa" false="" gfaGfa} \
      ~{true="-binary" false="" binaryBinary} \
      ~{true="-no5p" false="" no5pNo5p} \
      ~{true="-no3p" false="" no3pNo3p} \
      ~{true="-nocontainer" false="" noNoContainer} \
      ~{true="-nocontained" false="" noNoContained} \
      ~{true="-noredundant" false="" noNoRedundant} \
      ~{if defined(queryQuery) then ("-query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(erateErate) then ("-erate " +  '"' + erateErate + '"') else ""} \
      ~{if defined(lengthLength) then ("-length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(bogartBogart) then ("-bogart " +  '"' + bogartBogart + '"') else ""} \
      ~{true="-nobogartcontained" false="" noNoBogartContained} \
      ~{if defined(noNoBogartCoverageGap) then ("-nobogartcoveragegap " +  '"' + noNoBogartCoverageGap + '"') else ""} \
      ~{true="-nobogartlopsided" false="" noNoBogartLopsided} \
      ~{true="-nobogartspur" false="" noNoBogartSpur}
  >>>
}