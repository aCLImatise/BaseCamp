version 1.0

task Wig2hints.pl {
  input {
    String widthWidth
    String marginMargin
    String minMinThresh
    String minMinScore
    String typeType
    String priPri
    String radiusRadius
    String strandStrand
    String prunePrune
    String srcSrc
    String ucscUcsc
  }
  command <<<
    wig2hints.pl \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(marginMargin) then ("--margin " +  '"' + marginMargin + '"') else ""} \
      ~{if defined(minMinThresh) then ("--minthresh " +  '"' + minMinThresh + '"') else ""} \
      ~{if defined(minMinScore) then ("--minscore " +  '"' + minMinScore + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(priPri) then ("--pri " +  '"' + priPri + '"') else ""} \
      ~{if defined(radiusRadius) then ("--radius " +  '"' + radiusRadius + '"') else ""} \
      ~{if defined(strandStrand) then ("--strand " +  '"' + strandStrand + '"') else ""} \
      ~{if defined(prunePrune) then ("--prune " +  '"' + prunePrune + '"') else ""} \
      ~{if defined(srcSrc) then ("--src " +  '"' + srcSrc + '"') else ""} \
      ~{if defined(ucscUcsc) then ("--UCSC " +  '"' + ucscUcsc + '"') else ""}
  >>>
}