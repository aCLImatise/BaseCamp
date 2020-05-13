version 1.0

task PtmSummary.py {
  input {
    String pP
    Boolean noNoLog2
    Boolean noNoMedian
    Array[String]+ wpWp
    Boolean nonNonModNorm
    String siteSiteFile
    String peptidePeptideFile
    Array[String]+ inferenceInference
    String geneGene
    String proteinProtein
    String peptidePeptide
    Array[String]+ quantQuant
    Array[String]+ modsMods
    String siteSiteProtein
  }
  command <<<
    ptmSummary.py \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="--no-log2" false="" noNoLog2} \
      ~{true="--no-median" false="" noNoMedian} \
      ~{if defined(wpWp) then ("--wp " +  '"' + wpWp + '"') else ""} \
      ~{true="--non-mod-norm" false="" nonNonModNorm} \
      ~{if defined(siteSiteFile) then ("--site-file " +  '"' + siteSiteFile + '"') else ""} \
      ~{if defined(peptidePeptideFile) then ("--peptide-file " +  '"' + peptidePeptideFile + '"') else ""} \
      ~{if defined(inferenceInference) then ("--inference " +  '"' + inferenceInference + '"') else ""} \
      ~{if defined(geneGene) then ("--gene " +  '"' + geneGene + '"') else ""} \
      ~{if defined(proteinProtein) then ("--protein " +  '"' + proteinProtein + '"') else ""} \
      ~{if defined(peptidePeptide) then ("--peptide " +  '"' + peptidePeptide + '"') else ""} \
      ~{if defined(quantQuant) then ("--quant " +  '"' + quantQuant + '"') else ""} \
      ~{if defined(modsMods) then ("--mods " +  '"' + modsMods + '"') else ""} \
      ~{if defined(siteSiteProtein) then ("--site-protein " +  '"' + siteSiteProtein + '"') else ""}
  >>>
}