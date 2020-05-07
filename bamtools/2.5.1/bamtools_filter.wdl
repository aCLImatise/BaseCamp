version 1.0

task BamtoolsFilter {
  input {
    String inIn
    File listList
    String outOut
    String regionRegion
    File scriptScript
    Boolean forceForceCompression
    Int alignmentAlignmentFlag
    Int insertInsertSize
    Int lengthLength
    Boolean mapMapQuality
    String nameName
    String queryQueryBases
    Boolean tagTag
    Boolean isIsDuplicate
    Boolean isIsFailedQc
    Boolean isIsFirstMate
    Boolean isIsMapped
    Boolean isIsMateMapped
    Boolean isIsMateReverseStrand
    Boolean isIsPaired
    Boolean isIsPrimaryAlignment
    Boolean isIsProperPair
    Boolean isIsReverseStrand
    Boolean isIsSecondMate
    Boolean isIsSingleton
  }
  command <<<
    bamtools filter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(listList) then ("-list " +  '"' + listList + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(regionRegion) then ("-region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(scriptScript) then ("-script " +  '"' + scriptScript + '"') else ""} \
      ~{true="-forceCompression" false="" forceForceCompression} \
      ~{if defined(alignmentAlignmentFlag) then ("-alignmentFlag " +  '"' + alignmentAlignmentFlag + '"') else ""} \
      ~{if defined(insertInsertSize) then ("-insertSize " +  '"' + insertInsertSize + '"') else ""} \
      ~{if defined(lengthLength) then ("-length " +  '"' + lengthLength + '"') else ""} \
      ~{true="-mapQuality" false="" mapMapQuality} \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""} \
      ~{if defined(queryQueryBases) then ("-queryBases " +  '"' + queryQueryBases + '"') else ""} \
      ~{true="-tag" false="" tagTag} \
      ~{true="-isDuplicate" false="" isIsDuplicate} \
      ~{true="-isFailedQC" false="" isIsFailedQc} \
      ~{true="-isFirstMate" false="" isIsFirstMate} \
      ~{true="-isMapped" false="" isIsMapped} \
      ~{true="-isMateMapped" false="" isIsMateMapped} \
      ~{true="-isMateReverseStrand" false="" isIsMateReverseStrand} \
      ~{true="-isPaired" false="" isIsPaired} \
      ~{true="-isPrimaryAlignment" false="" isIsPrimaryAlignment} \
      ~{true="-isProperPair" false="" isIsProperPair} \
      ~{true="-isReverseStrand" false="" isIsReverseStrand} \
      ~{true="-isSecondMate" false="" isIsSecondMate} \
      ~{true="-isSingleton" false="" isIsSingleton}
  >>>
}