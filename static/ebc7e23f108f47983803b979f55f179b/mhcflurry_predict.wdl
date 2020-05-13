version 1.0

task MhcflurryPredict {
  input {
    Boolean listListSupportedAlleles
    Boolean listListSupportedPeptideLengths
    Array[String]+ allelesAlleles
    Array[String]+ peptidesPeptides
    String alleleAlleleColumn
    String peptidePeptideColumn
    String nNFlankColumn
    String cCFlankColumn
    Boolean noNoThrow
    String outOut
    String predictionPredictionColumnPrefix
    String outputOutputDelimiter
    Boolean noNoAffinityPercentile
    Boolean alwaysAlwaysIncludeBestAllele
    String modelsModels
    Boolean affinityAffinityOnly
    Boolean noNoFlanking
  }
  command <<<
    mhcflurry-predict \
      ~{true="--list-supported-alleles" false="" listListSupportedAlleles} \
      ~{true="--list-supported-peptide-lengths" false="" listListSupportedPeptideLengths} \
      ~{if defined(allelesAlleles) then ("--alleles " +  '"' + allelesAlleles + '"') else ""} \
      ~{if defined(peptidesPeptides) then ("--peptides " +  '"' + peptidesPeptides + '"') else ""} \
      ~{if defined(alleleAlleleColumn) then ("--allele-column " +  '"' + alleleAlleleColumn + '"') else ""} \
      ~{if defined(peptidePeptideColumn) then ("--peptide-column " +  '"' + peptidePeptideColumn + '"') else ""} \
      ~{if defined(nNFlankColumn) then ("--n-flank-column " +  '"' + nNFlankColumn + '"') else ""} \
      ~{if defined(cCFlankColumn) then ("--c-flank-column " +  '"' + cCFlankColumn + '"') else ""} \
      ~{true="--no-throw" false="" noNoThrow} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(predictionPredictionColumnPrefix) then ("--prediction-column-prefix " +  '"' + predictionPredictionColumnPrefix + '"') else ""} \
      ~{if defined(outputOutputDelimiter) then ("--output-delimiter " +  '"' + outputOutputDelimiter + '"') else ""} \
      ~{true="--no-affinity-percentile" false="" noNoAffinityPercentile} \
      ~{true="--always-include-best-allele" false="" alwaysAlwaysIncludeBestAllele} \
      ~{if defined(modelsModels) then ("--models " +  '"' + modelsModels + '"') else ""} \
      ~{true="--affinity-only" false="" affinityAffinityOnly} \
      ~{true="--no-flanking" false="" noNoFlanking}
  >>>
}