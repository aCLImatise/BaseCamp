version 1.0

task Truvari {
  input {
    String baseBase
    String compComp
    String outputOutput
    String referenceReference
    Boolean giaGiaBReport
    Boolean debugDebug
    String refRefDist
    String pctPctSim
    String pctPctSize
    String pcPcToVl
    Boolean typeTypeIgnore
    Boolean gtGtComp
    String bBSample
    String cCSample
    Int sizeSizeMin
    Int sizeSizeFilt
    Int sizeSizeMax
    Boolean passPassOnly
    Boolean noNoRef
    String includeIncludeBed
    Boolean multiMultiMatch
  }
  command <<<
    truvari \
      ~{if defined(baseBase) then ("--base " +  '"' + baseBase + '"') else ""} \
      ~{if defined(compComp) then ("--comp " +  '"' + compComp + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--giabreport" false="" giaGiaBReport} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(refRefDist) then ("--refdist " +  '"' + refRefDist + '"') else ""} \
      ~{if defined(pctPctSim) then ("--pctsim " +  '"' + pctPctSim + '"') else ""} \
      ~{if defined(pctPctSize) then ("--pctsize " +  '"' + pctPctSize + '"') else ""} \
      ~{if defined(pcPcToVl) then ("--pctovl " +  '"' + pcPcToVl + '"') else ""} \
      ~{true="--typeignore" false="" typeTypeIgnore} \
      ~{true="--gtcomp" false="" gtGtComp} \
      ~{if defined(bBSample) then ("--bSample " +  '"' + bBSample + '"') else ""} \
      ~{if defined(cCSample) then ("--cSample " +  '"' + cCSample + '"') else ""} \
      ~{if defined(sizeSizeMin) then ("--sizemin " +  '"' + sizeSizeMin + '"') else ""} \
      ~{if defined(sizeSizeFilt) then ("--sizefilt " +  '"' + sizeSizeFilt + '"') else ""} \
      ~{if defined(sizeSizeMax) then ("--sizemax " +  '"' + sizeSizeMax + '"') else ""} \
      ~{true="--passonly" false="" passPassOnly} \
      ~{true="--no-ref" false="" noNoRef} \
      ~{if defined(includeIncludeBed) then ("--includebed " +  '"' + includeIncludeBed + '"') else ""} \
      ~{true="--multimatch" false="" multiMultiMatch}
  >>>
}