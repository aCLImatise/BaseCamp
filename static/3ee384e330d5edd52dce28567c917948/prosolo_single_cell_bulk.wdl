version 1.0

task ProsoloSingleCellBulk {
  input {
    Boolean exclusiveExclusiveEnd
    Boolean omitOmitFragmentEvidence
    Boolean omitOmitIndels
    Boolean omitOmitSnVs
    Int bulkBulkMaxN
    Int bulkBulkMinN
    File candidatesCandidates
    Int inInDelWindow
    Int maxMaxInDelLen
    File obsObs
    File outputOutput
    Int pilePileUpWindow
    Int ploidyPloidy
    Float spuriousSpuriousDelExtRate
    Float spuriousSpuriousInSextRate
    Float spuriousSpuriousDelRate
    Float spuriousSpuriousInsRate
    String? flagsFlags
    String? optionsOptions
    String? singleSingleCell
    String? bulkBulk
    String? referenceReference
  }
  command <<<
    prosolo single-cell-bulk \
      ~{flagsFlags} \
      ~{true="--exclusive-end" false="" exclusiveExclusiveEnd} \
      ~{true="--omit-fragment-evidence" false="" omitOmitFragmentEvidence} \
      ~{true="--omit-indels" false="" omitOmitIndels} \
      ~{true="--omit-snvs" false="" omitOmitSnVs} \
      ~{if defined(bulkBulkMaxN) then ("--bulk-max-n " +  '"' + bulkBulkMaxN + '"') else ""} \
      ~{if defined(bulkBulkMinN) then ("--bulk-min-n " +  '"' + bulkBulkMinN + '"') else ""} \
      ~{if defined(candidatesCandidates) then ("--candidates " +  '"' + candidatesCandidates + '"') else ""} \
      ~{if defined(inInDelWindow) then ("--indel-window " +  '"' + inInDelWindow + '"') else ""} \
      ~{if defined(maxMaxInDelLen) then ("--max-indel-len " +  '"' + maxMaxInDelLen + '"') else ""} \
      ~{if defined(obsObs) then ("--obs " +  '"' + obsObs + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(pilePileUpWindow) then ("--pileup-window " +  '"' + pilePileUpWindow + '"') else ""} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{if defined(spuriousSpuriousDelExtRate) then ("--spurious-delext-rate " +  '"' + spuriousSpuriousDelExtRate + '"') else ""} \
      ~{if defined(spuriousSpuriousInSextRate) then ("--spurious-insext-rate " +  '"' + spuriousSpuriousInSextRate + '"') else ""} \
      ~{if defined(spuriousSpuriousDelRate) then ("--spurious-del-rate " +  '"' + spuriousSpuriousDelRate + '"') else ""} \
      ~{if defined(spuriousSpuriousInsRate) then ("--spurious-ins-rate " +  '"' + spuriousSpuriousInsRate + '"') else ""} \
      ~{optionsOptions} \
      ~{singleSingleCell} \
      ~{bulkBulk} \
      ~{referenceReference}
  >>>
}