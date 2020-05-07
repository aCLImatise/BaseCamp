version 1.0

task Sistr {
  input {
    String iI
    String outputOutputFormat
    String outputOutputPrediction
    Boolean moreMoreResults
    String cgmCgmLstProfiles
    String novelNovelAlleles
    String allelesAllelesOutput
    String tmpTmpDir
    Boolean keepKeepTmp
    Boolean useUseFullCgmLstDb
    Boolean noNoCgmLst
    Boolean runRunMash
    Boolean qcQc
    String threadsThreads
    Boolean verboseVerbose
    String? fF
  }
  command <<<
    sistr \
      ~{fF} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(outputOutputPrediction) then ("--output-prediction " +  '"' + outputOutputPrediction + '"') else ""} \
      ~{true="--more-results" false="" moreMoreResults} \
      ~{if defined(cgmCgmLstProfiles) then ("--cgmlst-profiles " +  '"' + cgmCgmLstProfiles + '"') else ""} \
      ~{if defined(novelNovelAlleles) then ("--novel-alleles " +  '"' + novelNovelAlleles + '"') else ""} \
      ~{if defined(allelesAllelesOutput) then ("--alleles-output " +  '"' + allelesAllelesOutput + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp-dir " +  '"' + tmpTmpDir + '"') else ""} \
      ~{true="--keep-tmp" false="" keepKeepTmp} \
      ~{true="--use-full-cgmlst-db" false="" useUseFullCgmLstDb} \
      ~{true="--no-cgmlst" false="" noNoCgmLst} \
      ~{true="--run-mash" false="" runRunMash} \
      ~{true="--qc" false="" qcQc} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}