version 1.0

task Plink2 {
  input {
    Boolean outOut
    String realRealRefAlleles
    Boolean checkCheckSex
    Boolean homoHomoZyGWindowSnp
    File extractExtract
    Boolean metaMetaAnalysis
    Boolean metaMetaAnalysis
    File extractExtract
    String snpsSnps
    Boolean missingMissingCode
    Boolean simulateSimulateNCases
    Boolean simulateSimulateNControls
    Boolean simulateSimulatePrevalence
    Boolean simulateSimulateN
    Boolean simulateSimulateLabel
    Boolean simulateSimulateMissing
    Boolean allowAllowExtraChr
    Boolean parametersParameters
    Boolean rRPort
    Boolean parallelParallel
    Boolean memoryMemory
    Boolean threadsThreads
    Boolean dD
    Boolean seedSeed
    Boolean permPermBatchSize
    Boolean outputOutputMinP
    Boolean debugDebug
    Boolean cnvCnvDel
    Boolean cnvCnvDup
    Boolean cnvCnvKb
    Boolean cnvCnvMaxKb
    Boolean cnvCnvScore
    Boolean cnvCnvMaxScore
    Boolean cnvCnvSites
    Boolean cnvCnvMaxSites
    Boolean cnvCnvIntersect
    Boolean cnvCnvExclude
    Boolean cnvCnvSubset
    Boolean cnvCnvOverlap
    Boolean cnvCnvRegionOverlap
    Boolean cnvCnvUnionOverlap
    Boolean cnvCnvDisrupt
    Boolean cnvCnvFreqExcludeAbove
    Boolean cnvCnvFreqExcludeBelow
    Boolean cnvCnvFreqExcludeExact
    Boolean cnvCnvFreqIncludeExact
    String cnvCnvFreqOverlap
    String cnvCnvFreqMethod2
    Boolean cnvCnvExcludeOffBy1
    Boolean cnvCnvTestWindow
    Boolean cnvCnvCount
  }
  command <<<
    plink2 \
      ~{true="--out" false="" outOut} \
      ~{if defined(realRealRefAlleles) then ("--real-ref-alleles " +  '"' + realRealRefAlleles + '"') else ""} \
      ~{true="--check-sex" false="" checkCheckSex} \
      ~{true="--homozyg-window-snp" false="" homoHomoZyGWindowSnp} \
      ~{if defined(extractExtract) then ("--extract " +  '"' + extractExtract + '"') else ""} \
      ~{true="--meta-analysis" false="" metaMetaAnalysis} \
      ~{true="--meta-analysis" false="" metaMetaAnalysis} \
      ~{if defined(extractExtract) then ("--extract " +  '"' + extractExtract + '"') else ""} \
      ~{if defined(snpsSnps) then ("--snps " +  '"' + snpsSnps + '"') else ""} \
      ~{true="--missing_code" false="" missingMissingCode} \
      ~{true="--simulate-ncases" false="" simulateSimulateNCases} \
      ~{true="--simulate-ncontrols" false="" simulateSimulateNControls} \
      ~{true="--simulate-prevalence" false="" simulateSimulatePrevalence} \
      ~{true="--simulate-n" false="" simulateSimulateN} \
      ~{true="--simulate-label" false="" simulateSimulateLabel} \
      ~{true="--simulate-missing" false="" simulateSimulateMissing} \
      ~{true="--allow-extra-chr" false="" allowAllowExtraChr} \
      ~{true="--parameters" false="" parametersParameters} \
      ~{true="--R-port" false="" rRPort} \
      ~{true="--parallel" false="" parallelParallel} \
      ~{true="--memory" false="" memoryMemory} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--d" false="" dD} \
      ~{true="--seed" false="" seedSeed} \
      ~{true="--perm-batch-size" false="" permPermBatchSize} \
      ~{true="--output-min-p" false="" outputOutputMinP} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--cnv-del" false="" cnvCnvDel} \
      ~{true="--cnv-dup" false="" cnvCnvDup} \
      ~{true="--cnv-kb" false="" cnvCnvKb} \
      ~{true="--cnv-max-kb" false="" cnvCnvMaxKb} \
      ~{true="--cnv-score" false="" cnvCnvScore} \
      ~{true="--cnv-max-score" false="" cnvCnvMaxScore} \
      ~{true="--cnv-sites" false="" cnvCnvSites} \
      ~{true="--cnv-max-sites" false="" cnvCnvMaxSites} \
      ~{true="--cnv-intersect" false="" cnvCnvIntersect} \
      ~{true="--cnv-exclude" false="" cnvCnvExclude} \
      ~{true="--cnv-subset" false="" cnvCnvSubset} \
      ~{true="--cnv-overlap" false="" cnvCnvOverlap} \
      ~{true="--cnv-region-overlap" false="" cnvCnvRegionOverlap} \
      ~{true="--cnv-union-overlap" false="" cnvCnvUnionOverlap} \
      ~{true="--cnv-disrupt" false="" cnvCnvDisrupt} \
      ~{true="--cnv-freq-exclude-above" false="" cnvCnvFreqExcludeAbove} \
      ~{true="--cnv-freq-exclude-below" false="" cnvCnvFreqExcludeBelow} \
      ~{true="--cnv-freq-exclude-exact" false="" cnvCnvFreqExcludeExact} \
      ~{true="--cnv-freq-include-exact" false="" cnvCnvFreqIncludeExact} \
      ~{if defined(cnvCnvFreqOverlap) then ("--cnv-freq-overlap " +  '"' + cnvCnvFreqOverlap + '"') else ""} \
      ~{if defined(cnvCnvFreqMethod2) then ("--cnv-freq-method2 " +  '"' + cnvCnvFreqMethod2 + '"') else ""} \
      ~{true="--cnv-exclude-off-by-1" false="" cnvCnvExcludeOffBy1} \
      ~{true="--cnv-test-window" false="" cnvCnvTestWindow} \
      ~{true="--cnv-count" false="" cnvCnvCount}
  >>>
}