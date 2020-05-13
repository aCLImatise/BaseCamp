version 1.0

task HalTreeNIConservation.py {
  input {
    String backgroundBackgroundBedName
    String mutationsMutationsBedName
    String conservedConservedBedName
    String rootRoot
    String eventsEvents
    String pvalPval
    String cutCutOff
    String? halHal
    String? workdirWorkdir
  }
  command <<<
    halTreeNIConservation.py \
      ~{halHal} \
      ~{if defined(backgroundBackgroundBedName) then ("--backgroundBedName " +  '"' + backgroundBackgroundBedName + '"') else ""} \
      ~{if defined(mutationsMutationsBedName) then ("--mutationsBedName " +  '"' + mutationsMutationsBedName + '"') else ""} \
      ~{if defined(conservedConservedBedName) then ("--conservedBedName " +  '"' + conservedConservedBedName + '"') else ""} \
      ~{if defined(rootRoot) then ("--root " +  '"' + rootRoot + '"') else ""} \
      ~{if defined(eventsEvents) then ("--events " +  '"' + eventsEvents + '"') else ""} \
      ~{if defined(pvalPval) then ("--pval " +  '"' + pvalPval + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{workdirWorkdir}
  >>>
}