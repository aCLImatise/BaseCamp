version 1.0

task PhyloFit {
  input {
    Boolean outOutRoot
    String outOutRoot
    String outOutRoot
    Boolean catCatMap
    String outOutRoot
    String minMinInformative
    Boolean gapsGapsAsBases
    String ignoreIgnoreBranches
    Boolean quietQuiet
    String selectionSelection
    String nNRates
    String alphaAlpha
    String rateRateConstants
    String doDoCats
    String reverseReverseGroups
    Boolean markovMarkov
    Boolean nonNonOverlapping
    Boolean treeTree
    Boolean labelLabelSubtree
    Boolean altAltModel
    Boolean postPostProbs
    Boolean expectedExpectedSubs
    Boolean expectedExpectedSubsCol
    Boolean expectedExpectedTotalSubs
    Boolean columnColumnProbs
    String windowsWindowsExplicit
  }
  command <<<
    phyloFit \
      ~{true="--out-root" false="" outOutRoot} \
      ~{if defined(outOutRoot) then ("--out-root " +  '"' + outOutRoot + '"') else ""} \
      ~{if defined(outOutRoot) then ("--out-root " +  '"' + outOutRoot + '"') else ""} \
      ~{true="--catmap" false="" catCatMap} \
      ~{if defined(outOutRoot) then ("--out-root " +  '"' + outOutRoot + '"') else ""} \
      ~{if defined(minMinInformative) then ("--min-informative " +  '"' + minMinInformative + '"') else ""} \
      ~{true="--gaps-as-bases" false="" gapsGapsAsBases} \
      ~{if defined(ignoreIgnoreBranches) then ("--ignore-branches " +  '"' + ignoreIgnoreBranches + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(selectionSelection) then ("--selection " +  '"' + selectionSelection + '"') else ""} \
      ~{if defined(nNRates) then ("--nrates " +  '"' + nNRates + '"') else ""} \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(rateRateConstants) then ("--rate-constants " +  '"' + rateRateConstants + '"') else ""} \
      ~{if defined(doDoCats) then ("--do-cats " +  '"' + doDoCats + '"') else ""} \
      ~{if defined(reverseReverseGroups) then ("--reverse-groups " +  '"' + reverseReverseGroups + '"') else ""} \
      ~{true="--markov" false="" markovMarkov} \
      ~{true="--non-overlapping" false="" nonNonOverlapping} \
      ~{true="--tree" false="" treeTree} \
      ~{true="--label-subtree" false="" labelLabelSubtree} \
      ~{true="--alt-model" false="" altAltModel} \
      ~{true="--post-probs" false="" postPostProbs} \
      ~{true="--expected-subs" false="" expectedExpectedSubs} \
      ~{true="--expected-subs-col" false="" expectedExpectedSubsCol} \
      ~{true="--expected-total-subs" false="" expectedExpectedTotalSubs} \
      ~{true="--column-probs" false="" columnColumnProbs} \
      ~{if defined(windowsWindowsExplicit) then ("--windows-explicit " +  '"' + windowsWindowsExplicit + '"') else ""}
  >>>
}