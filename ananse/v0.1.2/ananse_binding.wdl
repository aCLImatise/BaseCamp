version 1.0

task AnanseBinding {
  input {
    File pfmPfmFile
    String nNCore
    File enhancersEnhancers
    String annotationAnnotation
    String genomeGenome
    File outputOutput
    String filterFilterPromoter
    String keepKeepDetail
  }
  command <<<
    ananse binding \
      ~{if defined(pfmPfmFile) then ("--pfmfile " +  '"' + pfmPfmFile + '"') else ""} \
      ~{if defined(nNCore) then ("--ncore " +  '"' + nNCore + '"') else ""} \
      ~{if defined(enhancersEnhancers) then ("--enhancers " +  '"' + enhancersEnhancers + '"') else ""} \
      ~{if defined(annotationAnnotation) then ("--annotation " +  '"' + annotationAnnotation + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(filterFilterPromoter) then ("--filter_promoter " +  '"' + filterFilterPromoter + '"') else ""} \
      ~{if defined(keepKeepDetail) then ("--keep_detail " +  '"' + keepKeepDetail + '"') else ""}
  >>>
}