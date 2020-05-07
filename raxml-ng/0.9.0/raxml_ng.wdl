version 1.0

task RaxmlNg {
  input {
    Boolean evaluateEvaluate
    Boolean searchSearch
    Boolean bootstrapBootstrap
    Boolean allAll
    Boolean supportSupport
    Boolean bsBsConverge
    Boolean bsmsBsmsA
    Boolean terraceTerrace
    Boolean checkCheck
    Boolean parseParse
    Boolean startStart
    Boolean rfRfDist
    Boolean conConSense
    Boolean ancestralAncestral
    Boolean searchSearch1
    Boolean logLogLh
    Boolean rfRf
    Boolean treeTree
    Boolean msaMsa
    Boolean msaMsaFormat
    Boolean dataDataType
    File treeTreeConstraint
    Boolean prefixPrefix
    Boolean logLog
    Boolean redoRedo
    Boolean noNoFiles
    Boolean precisionPrecision
    Boolean outOutGroup
    Boolean seedSeed
    Boolean patPatComp
    Boolean tipTipInner
    String siteSiteRepeats
    Boolean threadsThreads
    Boolean simdSimd
    String rateRateScalers
    Boolean forceForce
    Boolean modelModel
    Boolean brBrLen
    Boolean blmBlmIn
    Boolean blBlMax
    Boolean blBlOpt
    Boolean optOptModel
    String optOptBranches
    Boolean probProbMsa
    Boolean lhLhEpsilon
    Boolean sprSprRadius
    Boolean sprSprCutOff
    Boolean bsBsTrees
    Boolean bsBsTrees
    Boolean bsBsTrees
    Boolean bsBsCutOff
    Boolean bsBsMetric
    String? optionsOptions
  }
  command <<<
    raxml-ng \
      ~{optionsOptions} \
      ~{true="--evaluate" false="" evaluateEvaluate} \
      ~{true="--search" false="" searchSearch} \
      ~{true="--bootstrap" false="" bootstrapBootstrap} \
      ~{true="--all" false="" allAll} \
      ~{true="--support" false="" supportSupport} \
      ~{true="--bsconverge" false="" bsBsConverge} \
      ~{true="--bsmsa" false="" bsmsBsmsA} \
      ~{true="--terrace" false="" terraceTerrace} \
      ~{true="--check" false="" checkCheck} \
      ~{true="--parse" false="" parseParse} \
      ~{true="--start" false="" startStart} \
      ~{true="--rfdist" false="" rfRfDist} \
      ~{true="--consense" false="" conConSense} \
      ~{true="--ancestral" false="" ancestralAncestral} \
      ~{true="--search1" false="" searchSearch1} \
      ~{true="--loglh" false="" logLogLh} \
      ~{true="--rf" false="" rfRf} \
      ~{true="--tree" false="" treeTree} \
      ~{true="--msa" false="" msaMsa} \
      ~{true="--msa-format" false="" msaMsaFormat} \
      ~{true="--data-type" false="" dataDataType} \
      ~{if defined(treeTreeConstraint) then ("--tree-constraint " +  '"' + treeTreeConstraint + '"') else ""} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--log" false="" logLog} \
      ~{true="--redo" false="" redoRedo} \
      ~{true="--nofiles" false="" noNoFiles} \
      ~{true="--precision" false="" precisionPrecision} \
      ~{true="--outgroup" false="" outOutGroup} \
      ~{true="--seed" false="" seedSeed} \
      ~{true="--pat-comp" false="" patPatComp} \
      ~{true="--tip-inner" false="" tipTipInner} \
      ~{if defined(siteSiteRepeats) then ("--site-repeats " +  '"' + siteSiteRepeats + '"') else ""} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--simd" false="" simdSimd} \
      ~{if defined(rateRateScalers) then ("--rate-scalers " +  '"' + rateRateScalers + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--model" false="" modelModel} \
      ~{true="--brlen" false="" brBrLen} \
      ~{true="--blmin" false="" blmBlmIn} \
      ~{true="--blmax" false="" blBlMax} \
      ~{true="--blopt" false="" blBlOpt} \
      ~{true="--opt-model" false="" optOptModel} \
      ~{if defined(optOptBranches) then ("--opt-branches " +  '"' + optOptBranches + '"') else ""} \
      ~{true="--prob-msa" false="" probProbMsa} \
      ~{true="--lh-epsilon" false="" lhLhEpsilon} \
      ~{true="--spr-radius" false="" sprSprRadius} \
      ~{true="--spr-cutoff" false="" sprSprCutOff} \
      ~{true="--bs-trees" false="" bsBsTrees} \
      ~{true="--bs-trees" false="" bsBsTrees} \
      ~{true="--bs-trees" false="" bsBsTrees} \
      ~{true="--bs-cutoff" false="" bsBsCutOff} \
      ~{true="--bs-metric" false="" bsBsMetric}
  >>>
}