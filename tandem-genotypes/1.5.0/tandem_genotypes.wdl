version 1.0

task TandemGenotypes {
  input {
    File genesGenes
    String misMisMap
    String postPostMask
    String promoterPromoter
    String selectSelect
    String minMinUnit
    String farFar
    String nearNear
    String modeMode
    File scoresScores
    Boolean verboseVerbose
    String? microMicroSatTxt
    String? alignmentsAlignmentsMaf
  }
  command <<<
    tandem-genotypes \
      ~{microMicroSatTxt} \
      ~{if defined(genesGenes) then ("--genes " +  '"' + genesGenes + '"') else ""} \
      ~{if defined(misMisMap) then ("--mismap " +  '"' + misMisMap + '"') else ""} \
      ~{if defined(postPostMask) then ("--postmask " +  '"' + postPostMask + '"') else ""} \
      ~{if defined(promoterPromoter) then ("--promoter " +  '"' + promoterPromoter + '"') else ""} \
      ~{if defined(selectSelect) then ("--select " +  '"' + selectSelect + '"') else ""} \
      ~{if defined(minMinUnit) then ("--min-unit " +  '"' + minMinUnit + '"') else ""} \
      ~{if defined(farFar) then ("--far " +  '"' + farFar + '"') else ""} \
      ~{if defined(nearNear) then ("--near " +  '"' + nearNear + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(scoresScores) then ("--scores " +  '"' + scoresScores + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{alignmentsAlignmentsMaf}
  >>>
}