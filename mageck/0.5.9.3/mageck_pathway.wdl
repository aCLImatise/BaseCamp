version 1.0

task MageckPathway {
  input {
    String geneGeneRanking
    String gmtGmtFile
    String outputOutputPrefix
    String methodMethod
    Boolean singleSingleRanking
    String sortSortCriteria
    Boolean keepKeepTmp
    String rankingRankingColumn
    String rankingRankingColumn2
    File pathwayPathwayAlpha
    String permutationPermutation
  }
  command <<<
    mageck pathway \
      ~{if defined(geneGeneRanking) then ("--gene-ranking " +  '"' + geneGeneRanking + '"') else ""} \
      ~{if defined(gmtGmtFile) then ("--gmt-file " +  '"' + gmtGmtFile + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{true="--single-ranking" false="" singleSingleRanking} \
      ~{if defined(sortSortCriteria) then ("--sort-criteria " +  '"' + sortSortCriteria + '"') else ""} \
      ~{true="--keep-tmp" false="" keepKeepTmp} \
      ~{if defined(rankingRankingColumn) then ("--ranking-column " +  '"' + rankingRankingColumn + '"') else ""} \
      ~{if defined(rankingRankingColumn2) then ("--ranking-column-2 " +  '"' + rankingRankingColumn2 + '"') else ""} \
      ~{if defined(pathwayPathwayAlpha) then ("--pathway-alpha " +  '"' + pathwayPathwayAlpha + '"') else ""} \
      ~{if defined(permutationPermutation) then ("--permutation " +  '"' + permutationPermutation + '"') else ""}
  >>>
}