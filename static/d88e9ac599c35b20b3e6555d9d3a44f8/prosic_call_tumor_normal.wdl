version 1.0

task ProsicCallTumorNormal {
  input {
    Boolean exclusiveExclusiveEnd
    Boolean flatFlatPriors
    Boolean omitOmitFragmentEvidence
    Boolean omitOmitIndels
    Boolean omitOmitSnVs
    File candidatesCandidates
    Float deletionDeletionFactor
    Float effEffMut
    Float hetHet
    Int inInDelWindow
    Float insertionInsertionFactor
    Int maxMaxInDelLen
    File obsObs
    File outputOutput
    Int pilePileUpWindow
    Int ploidyPloidy
    Float spuriousSpuriousDelExtRate
    Float spuriousSpuriousInSextRate
    Float spuriousSpuriousDelRate
    Float spuriousSpuriousInsRate
    Float spuriousSpuriousISizeRate
    Float purityPurity
    String? flagsFlags
    String? optionsOptions
    String? tumorTumor
    String? normalNormal
    String? referenceReference
  }
  command <<<
    prosic call-tumor-normal \
      ~{flagsFlags} \
      ~{true="--exclusive-end" false="" exclusiveExclusiveEnd} \
      ~{true="--flat-priors" false="" flatFlatPriors} \
      ~{true="--omit-fragment-evidence" false="" omitOmitFragmentEvidence} \
      ~{true="--omit-indels" false="" omitOmitIndels} \
      ~{true="--omit-snvs" false="" omitOmitSnVs} \
      ~{if defined(candidatesCandidates) then ("--candidates " +  '"' + candidatesCandidates + '"') else ""} \
      ~{if defined(deletionDeletionFactor) then ("--deletion-factor " +  '"' + deletionDeletionFactor + '"') else ""} \
      ~{if defined(effEffMut) then ("--effmut " +  '"' + effEffMut + '"') else ""} \
      ~{if defined(hetHet) then ("--het " +  '"' + hetHet + '"') else ""} \
      ~{if defined(inInDelWindow) then ("--indel-window " +  '"' + inInDelWindow + '"') else ""} \
      ~{if defined(insertionInsertionFactor) then ("--insertion-factor " +  '"' + insertionInsertionFactor + '"') else ""} \
      ~{if defined(maxMaxInDelLen) then ("--max-indel-len " +  '"' + maxMaxInDelLen + '"') else ""} \
      ~{if defined(obsObs) then ("--obs " +  '"' + obsObs + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(pilePileUpWindow) then ("--pileup-window " +  '"' + pilePileUpWindow + '"') else ""} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{if defined(spuriousSpuriousDelExtRate) then ("--spurious-delext-rate " +  '"' + spuriousSpuriousDelExtRate + '"') else ""} \
      ~{if defined(spuriousSpuriousInSextRate) then ("--spurious-insext-rate " +  '"' + spuriousSpuriousInSextRate + '"') else ""} \
      ~{if defined(spuriousSpuriousDelRate) then ("--spurious-del-rate " +  '"' + spuriousSpuriousDelRate + '"') else ""} \
      ~{if defined(spuriousSpuriousInsRate) then ("--spurious-ins-rate " +  '"' + spuriousSpuriousInsRate + '"') else ""} \
      ~{if defined(spuriousSpuriousISizeRate) then ("--spurious-isize-rate " +  '"' + spuriousSpuriousISizeRate + '"') else ""} \
      ~{if defined(purityPurity) then ("--purity " +  '"' + purityPurity + '"') else ""} \
      ~{optionsOptions} \
      ~{tumorTumor} \
      ~{normalNormal} \
      ~{referenceReference}
  >>>
}