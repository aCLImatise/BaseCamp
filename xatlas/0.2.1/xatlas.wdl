version 1.0

task Xatlas {
  input {
    String refRef
    String inIn
    String sampleSampleName
    String prefixPrefix
    Boolean multithreadMultithread
    String numNumHtsThreads
    String captureCaptureBed
    Boolean minMinPValue
    String minMinSnpMapq
    String minMinInDelMapq
    String maxMaxCoverage
    String blockBlockAbsLim
    String blockBlockRelLim
    Boolean gvcGvcF
    Boolean bgBgZf
    File snpSnpLogItParams
    File inInDelLogItParams
    Boolean enableEnableStrandFilter
  }
  command <<<
    xatlas \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(sampleSampleName) then ("--sample-name " +  '"' + sampleSampleName + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--multithread" false="" multithreadMultithread} \
      ~{if defined(numNumHtsThreads) then ("--num-hts-threads " +  '"' + numNumHtsThreads + '"') else ""} \
      ~{if defined(captureCaptureBed) then ("--capture-bed " +  '"' + captureCaptureBed + '"') else ""} \
      ~{true="--min-p-value" false="" minMinPValue} \
      ~{if defined(minMinSnpMapq) then ("--min-snp-mapq " +  '"' + minMinSnpMapq + '"') else ""} \
      ~{if defined(minMinInDelMapq) then ("--min-indel-mapq " +  '"' + minMinInDelMapq + '"') else ""} \
      ~{if defined(maxMaxCoverage) then ("--max-coverage " +  '"' + maxMaxCoverage + '"') else ""} \
      ~{if defined(blockBlockAbsLim) then ("--block-abs-lim " +  '"' + blockBlockAbsLim + '"') else ""} \
      ~{if defined(blockBlockRelLim) then ("--block-rel-lim " +  '"' + blockBlockRelLim + '"') else ""} \
      ~{true="--gvcf" false="" gvcGvcF} \
      ~{true="--bgzf" false="" bgBgZf} \
      ~{if defined(snpSnpLogItParams) then ("--snp-logit-params " +  '"' + snpSnpLogItParams + '"') else ""} \
      ~{if defined(inInDelLogItParams) then ("--indel-logit-params " +  '"' + inInDelLogItParams + '"') else ""} \
      ~{true="--enable-strand-filter" false="" enableEnableStrandFilter}
  >>>
}