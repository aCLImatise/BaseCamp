version 1.0

task MaltBuild {
  input {
    Boolean inputInput
    Boolean sequenceSequenceType
    Boolean inputInputGff
    Boolean indexIndex
    Boolean threadsThreads
    Boolean stepStep
    Boolean shapesShapes
    Boolean maxMaxHitsPerSeed
    Boolean proteinProteinReduct
    Boolean gi2eggnogGi2eggnog
    Boolean acc2eggnogAcc2eggnog
    Boolean syn2eggnogSyn2eggnog
    Boolean gi2interpro2goGi2interpro2go
    Boolean acc2interpro2goAcc2interpro2go
    Boolean syn2interpro2goSyn2interpro2go
    Boolean gi2keggGi2kegg
    Boolean acc2keggAcc2kegg
    Boolean syn2keggSyn2kegg
    Boolean gi2seedGi2seed
    Boolean acc2seedAcc2seed
    Boolean syn2seedSyn2seed
    Boolean gi2Gi2Taxonomy
    Boolean acc2Acc2Taxonomy
    Boolean syn2Syn2Taxonomy
    Boolean parseParseTaxOnNames
    Boolean noNoFun
    Boolean firstFirstWordIsAccession
    Boolean accessionAccessionTags
    Boolean firstFirstWordOnly
    Boolean randomRandom
    Boolean hashHashScaleFactor
    Boolean verboseVerbose
  }
  command <<<
    malt-build \
      ~{true="--input" false="" inputInput} \
      ~{true="--sequenceType" false="" sequenceSequenceType} \
      ~{true="--inputGFF" false="" inputInputGff} \
      ~{true="--index" false="" indexIndex} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--step" false="" stepStep} \
      ~{true="--shapes" false="" shapesShapes} \
      ~{true="--maxHitsPerSeed" false="" maxMaxHitsPerSeed} \
      ~{true="--proteinReduct" false="" proteinProteinReduct} \
      ~{true="--gi2eggnog" false="" gi2eggnogGi2eggnog} \
      ~{true="--acc2eggnog" false="" acc2eggnogAcc2eggnog} \
      ~{true="--syn2eggnog" false="" syn2eggnogSyn2eggnog} \
      ~{true="--gi2interpro2go" false="" gi2interpro2goGi2interpro2go} \
      ~{true="--acc2interpro2go" false="" acc2interpro2goAcc2interpro2go} \
      ~{true="--syn2interpro2go" false="" syn2interpro2goSyn2interpro2go} \
      ~{true="--gi2kegg" false="" gi2keggGi2kegg} \
      ~{true="--acc2kegg" false="" acc2keggAcc2kegg} \
      ~{true="--syn2kegg" false="" syn2keggSyn2kegg} \
      ~{true="--gi2seed" false="" gi2seedGi2seed} \
      ~{true="--acc2seed" false="" acc2seedAcc2seed} \
      ~{true="--syn2seed" false="" syn2seedSyn2seed} \
      ~{true="--gi2taxonomy" false="" gi2Gi2Taxonomy} \
      ~{true="--acc2taxonomy" false="" acc2Acc2Taxonomy} \
      ~{true="--syn2taxonomy" false="" syn2Syn2Taxonomy} \
      ~{true="--parseTaxonNames" false="" parseParseTaxOnNames} \
      ~{true="--noFun" false="" noNoFun} \
      ~{true="--firstWordIsAccession" false="" firstFirstWordIsAccession} \
      ~{true="--accessionTags" false="" accessionAccessionTags} \
      ~{true="--firstWordOnly" false="" firstFirstWordOnly} \
      ~{true="--random" false="" randomRandom} \
      ~{true="--hashScaleFactor" false="" hashHashScaleFactor} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}