version 1.0

task MageckMle {
  input {
    String countCountTable
    String designDesignMatrix
    String day0Day0Label
    String outputOutputPrefix
    String includeIncludeSamples
    String betaBetaLabels
    String controlControlSgRna
    String controlControlGene
    String cnvCnvNorm
    String cnvCnvEst
    Boolean debugDebug
    String debugDebugGene
    String normNormMethod
    String genesGenesVarModeling
    String permutationPermutationRound
    Boolean noNoPermutationByGroup
    Int maxMaxSgRnaPerGenePermutation
    Boolean removeRemoveOutliers
    String threadsThreads
    String adjustAdjustMethod
    String sgSgRnaEfficiency
    String sgSgRnaEffNameColumn
    String sgSgRnaEffScoreColumn
    Boolean updateUpdateEfficiency
    Boolean bayesBayes
    Boolean ppiPpiPrior
    String ppiPpiWeighting
    String negativeNegativeControl
  }
  command <<<
    mageck mle \
      ~{if defined(countCountTable) then ("--count-table " +  '"' + countCountTable + '"') else ""} \
      ~{if defined(designDesignMatrix) then ("--design-matrix " +  '"' + designDesignMatrix + '"') else ""} \
      ~{if defined(day0Day0Label) then ("--day0-label " +  '"' + day0Day0Label + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(includeIncludeSamples) then ("--include-samples " +  '"' + includeIncludeSamples + '"') else ""} \
      ~{if defined(betaBetaLabels) then ("--beta-labels " +  '"' + betaBetaLabels + '"') else ""} \
      ~{if defined(controlControlSgRna) then ("--control-sgrna " +  '"' + controlControlSgRna + '"') else ""} \
      ~{if defined(controlControlGene) then ("--control-gene " +  '"' + controlControlGene + '"') else ""} \
      ~{if defined(cnvCnvNorm) then ("--cnv-norm " +  '"' + cnvCnvNorm + '"') else ""} \
      ~{if defined(cnvCnvEst) then ("--cnv-est " +  '"' + cnvCnvEst + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(debugDebugGene) then ("--debug-gene " +  '"' + debugDebugGene + '"') else ""} \
      ~{if defined(normNormMethod) then ("--norm-method " +  '"' + normNormMethod + '"') else ""} \
      ~{if defined(genesGenesVarModeling) then ("--genes-varmodeling " +  '"' + genesGenesVarModeling + '"') else ""} \
      ~{if defined(permutationPermutationRound) then ("--permutation-round " +  '"' + permutationPermutationRound + '"') else ""} \
      ~{true="--no-permutation-by-group" false="" noNoPermutationByGroup} \
      ~{if defined(maxMaxSgRnaPerGenePermutation) then ("--max-sgrnapergene-permutation " +  '"' + maxMaxSgRnaPerGenePermutation + '"') else ""} \
      ~{true="--remove-outliers" false="" removeRemoveOutliers} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(adjustAdjustMethod) then ("--adjust-method " +  '"' + adjustAdjustMethod + '"') else ""} \
      ~{if defined(sgSgRnaEfficiency) then ("--sgrna-efficiency " +  '"' + sgSgRnaEfficiency + '"') else ""} \
      ~{if defined(sgSgRnaEffNameColumn) then ("--sgrna-eff-name-column " +  '"' + sgSgRnaEffNameColumn + '"') else ""} \
      ~{if defined(sgSgRnaEffScoreColumn) then ("--sgrna-eff-score-column " +  '"' + sgSgRnaEffScoreColumn + '"') else ""} \
      ~{true="--update-efficiency" false="" updateUpdateEfficiency} \
      ~{true="--bayes" false="" bayesBayes} \
      ~{true="--PPI-prior" false="" ppiPpiPrior} \
      ~{if defined(ppiPpiWeighting) then ("--PPI-weighting " +  '"' + ppiPpiWeighting + '"') else ""} \
      ~{if defined(negativeNegativeControl) then ("--negative-control " +  '"' + negativeNegativeControl + '"') else ""}
  >>>
}