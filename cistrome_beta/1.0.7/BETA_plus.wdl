version 1.0

task BETAPlus {
  input {
    String peakPeakFile
    String diffDiffExpr
    String kindKind
    String genomeGenome
    Boolean gname2Gname2
    String infoInfo
    String gsGs
    String referenceReference
    String outputOutput
    Boolean blBl
    String bfBf
    String pnPn
    String methodMethod
    String nameName
    String distanceDistance
    String dfDf
    String daDa
    String cutCutOff
    String mnMn
  }
  command <<<
    BETA plus \
      ~{if defined(peakPeakFile) then ("--peakfile " +  '"' + peakPeakFile + '"') else ""} \
      ~{if defined(diffDiffExpr) then ("--diff_expr " +  '"' + diffDiffExpr + '"') else ""} \
      ~{if defined(kindKind) then ("--kind " +  '"' + kindKind + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="--gname2" false="" gname2Gname2} \
      ~{if defined(infoInfo) then ("--info " +  '"' + infoInfo + '"') else ""} \
      ~{if defined(gsGs) then ("--gs " +  '"' + gsGs + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--bl" false="" blBl} \
      ~{if defined(bfBf) then ("--bf " +  '"' + bfBf + '"') else ""} \
      ~{if defined(pnPn) then ("--pn " +  '"' + pnPn + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(dfDf) then ("--df " +  '"' + dfDf + '"') else ""} \
      ~{if defined(daDa) then ("--da " +  '"' + daDa + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(mnMn) then ("--mn " +  '"' + mnMn + '"') else ""}
  >>>
}