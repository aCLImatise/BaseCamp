version 1.0

task MauveStatic {
  input {
    File outputOutput
    String mumsMums
    String noNoRecursion
    String noNoLcbExtension
    String seedSeedSize
    String maxMaxExtensionIterations
    String eliminateEliminateInclusions
    String weightWeight
    File matchMatchInput
    Boolean lcbLcbMatchInput
    File lcbLcbInput
    File scratchScratchPath
    File idIdMatrix
    String islandIslandSize
    File islandIslandOutput
    String backboneBackboneSize
    String maxMaxBackboneGap
    File backboneBackboneOutput
    File coverageCoverageOutput
    String repeatsRepeats
    File outputOutputGuideTree
    String collinearCollinear
    String noNoGappedAlignment
    String maxMaxGappedAlignerLength
    String minMinRecursiveGapLength
    File permutationPermutationMatrixOutput
    String permutationPermutationMatrixMinWeight
    Directory alignmentAlignmentOutputDir
    Directory alignmentAlignmentOutputFormat
    File outputOutputAlignment
  }
  command <<<
    mauveStatic \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(mumsMums) then ("--mums " +  '"' + mumsMums + '"') else ""} \
      ~{if defined(noNoRecursion) then ("--no-recursion " +  '"' + noNoRecursion + '"') else ""} \
      ~{if defined(noNoLcbExtension) then ("--no-lcb-extension " +  '"' + noNoLcbExtension + '"') else ""} \
      ~{if defined(seedSeedSize) then ("--seed-size " +  '"' + seedSeedSize + '"') else ""} \
      ~{if defined(maxMaxExtensionIterations) then ("--max-extension-iterations " +  '"' + maxMaxExtensionIterations + '"') else ""} \
      ~{if defined(eliminateEliminateInclusions) then ("--eliminate-inclusions " +  '"' + eliminateEliminateInclusions + '"') else ""} \
      ~{if defined(weightWeight) then ("--weight " +  '"' + weightWeight + '"') else ""} \
      ~{if defined(matchMatchInput) then ("--match-input " +  '"' + matchMatchInput + '"') else ""} \
      ~{true="--lcb-match-input" false="" lcbLcbMatchInput} \
      ~{if defined(lcbLcbInput) then ("--lcb-input " +  '"' + lcbLcbInput + '"') else ""} \
      ~{if defined(scratchScratchPath) then ("--scratch-path " +  '"' + scratchScratchPath + '"') else ""} \
      ~{if defined(idIdMatrix) then ("--id-matrix " +  '"' + idIdMatrix + '"') else ""} \
      ~{if defined(islandIslandSize) then ("--island-size " +  '"' + islandIslandSize + '"') else ""} \
      ~{if defined(islandIslandOutput) then ("--island-output " +  '"' + islandIslandOutput + '"') else ""} \
      ~{if defined(backboneBackboneSize) then ("--backbone-size " +  '"' + backboneBackboneSize + '"') else ""} \
      ~{if defined(maxMaxBackboneGap) then ("--max-backbone-gap " +  '"' + maxMaxBackboneGap + '"') else ""} \
      ~{if defined(backboneBackboneOutput) then ("--backbone-output " +  '"' + backboneBackboneOutput + '"') else ""} \
      ~{if defined(coverageCoverageOutput) then ("--coverage-output " +  '"' + coverageCoverageOutput + '"') else ""} \
      ~{if defined(repeatsRepeats) then ("--repeats " +  '"' + repeatsRepeats + '"') else ""} \
      ~{if defined(outputOutputGuideTree) then ("--output-guide-tree " +  '"' + outputOutputGuideTree + '"') else ""} \
      ~{if defined(collinearCollinear) then ("--collinear " +  '"' + collinearCollinear + '"') else ""} \
      ~{if defined(noNoGappedAlignment) then ("--no-gapped-alignment " +  '"' + noNoGappedAlignment + '"') else ""} \
      ~{if defined(maxMaxGappedAlignerLength) then ("--max-gapped-aligner-length " +  '"' + maxMaxGappedAlignerLength + '"') else ""} \
      ~{if defined(minMinRecursiveGapLength) then ("--min-recursive-gap-length " +  '"' + minMinRecursiveGapLength + '"') else ""} \
      ~{if defined(permutationPermutationMatrixOutput) then ("--permutation-matrix-output " +  '"' + permutationPermutationMatrixOutput + '"') else ""} \
      ~{if defined(permutationPermutationMatrixMinWeight) then ("--permutation-matrix-min-weight " +  '"' + permutationPermutationMatrixMinWeight + '"') else ""} \
      ~{if defined(alignmentAlignmentOutputDir) then ("--alignment-output-dir " +  '"' + alignmentAlignmentOutputDir + '"') else ""} \
      ~{if defined(alignmentAlignmentOutputFormat) then ("--alignment-output-format " +  '"' + alignmentAlignmentOutputFormat + '"') else ""} \
      ~{if defined(outputOutputAlignment) then ("--output-alignment " +  '"' + outputOutputAlignment + '"') else ""}
  >>>
}