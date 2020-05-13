version 1.0

task FindEnrichment.py {
  input {
    String annAnnOfMt
    String taxidTaxid
    String alphaAlpha
    String pvalPval
    String pvalPvalField
    String outfileOutfile
    String nsNs
    String id2symId2sym
    String sectionsSections
    String outfileOutfileDetail
    Boolean compareCompare
    String ratioRatio
    Boolean indentIndent
    String oboObo
    Boolean noNoPropagateCounts
    Boolean relationshipRelationship
    Boolean relationshipsRelationships
    String methodMethod
    String pvalPvalCalc
    Int minMinOverlap
    String goGoSlim
    String evEvInc
    String evEvExc
    Boolean evEvHelp
    Boolean evEvHelpShort
    File? filenamesFilenames
  }
  command <<<
    find_enrichment.py \
      ~{filenamesFilenames} \
      ~{if defined(annAnnOfMt) then ("--annofmt " +  '"' + annAnnOfMt + '"') else ""} \
      ~{if defined(taxidTaxid) then ("--taxid " +  '"' + taxidTaxid + '"') else ""} \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(pvalPval) then ("--pval " +  '"' + pvalPval + '"') else ""} \
      ~{if defined(pvalPvalField) then ("--pval_field " +  '"' + pvalPvalField + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(nsNs) then ("--ns " +  '"' + nsNs + '"') else ""} \
      ~{if defined(id2symId2sym) then ("--id2sym " +  '"' + id2symId2sym + '"') else ""} \
      ~{if defined(sectionsSections) then ("--sections " +  '"' + sectionsSections + '"') else ""} \
      ~{if defined(outfileOutfileDetail) then ("--outfile_detail " +  '"' + outfileOutfileDetail + '"') else ""} \
      ~{true="--compare" false="" compareCompare} \
      ~{if defined(ratioRatio) then ("--ratio " +  '"' + ratioRatio + '"') else ""} \
      ~{true="--indent" false="" indentIndent} \
      ~{if defined(oboObo) then ("--obo " +  '"' + oboObo + '"') else ""} \
      ~{true="--no_propagate_counts" false="" noNoPropagateCounts} \
      ~{true="--relationship" false="" relationshipRelationship} \
      ~{true="--relationships" false="" relationshipsRelationships} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(pvalPvalCalc) then ("--pvalcalc " +  '"' + pvalPvalCalc + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min_overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(goGoSlim) then ("--goslim " +  '"' + goGoSlim + '"') else ""} \
      ~{if defined(evEvInc) then ("--ev_inc " +  '"' + evEvInc + '"') else ""} \
      ~{if defined(evEvExc) then ("--ev_exc " +  '"' + evEvExc + '"') else ""} \
      ~{true="--ev_help" false="" evEvHelp} \
      ~{true="--ev_help_short" false="" evEvHelpShort}
  >>>
}