version 1.0

task AnanseNetwork {
  input {
    File motifsMotifs
    String nNCore
    Boolean eE
    Boolean cC
    Boolean bB
    String promoterPromoter
    String annotationAnnotation
    String genomeGenome
    Boolean imputeImpute
    File outputOutput
  }
  command <<<
    ananse network \
      ~{if defined(motifsMotifs) then ("--motifs " +  '"' + motifsMotifs + '"') else ""} \
      ~{if defined(nNCore) then ("--ncore " +  '"' + nNCore + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{true="-c" false="" cC} \
      ~{true="-b" false="" bB} \
      ~{if defined(promoterPromoter) then ("--promoter " +  '"' + promoterPromoter + '"') else ""} \
      ~{if defined(annotationAnnotation) then ("--annotation " +  '"' + annotationAnnotation + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="--impute" false="" imputeImpute} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}