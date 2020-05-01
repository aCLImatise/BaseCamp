version 1.0

task Plink {
  input {
    Boolean outOut
    Boolean referenceReference
    Boolean tTFile
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
    Boolean rRHost
    Boolean rRSocket
    Boolean parallelParallel
    Boolean memoryMemory
    Boolean threadsThreads
    Boolean dD
    Boolean seedSeed
    Boolean permPermBatchSize
    Boolean outputOutputMinP
    Boolean debugDebug
  }
  command <<<
    plink \
      ~{true="--out" false="" outOut} \
      ~{true="--reference" false="" referenceReference} \
      ~{true="--tfile" false="" tTFile} \
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
      ~{true="--R-host" false="" rRHost} \
      ~{true="--R-socket" false="" rRSocket} \
      ~{true="--parallel" false="" parallelParallel} \
      ~{true="--memory" false="" memoryMemory} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--d" false="" dD} \
      ~{true="--seed" false="" seedSeed} \
      ~{true="--perm-batch-size" false="" permPermBatchSize} \
      ~{true="--output-min-p" false="" outputOutputMinP} \
      ~{true="--debug" false="" debugDebug}
  >>>
}