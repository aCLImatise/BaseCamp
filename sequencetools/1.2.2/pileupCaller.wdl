version 1.0

task PileupCaller {
  input {
    String modeMode
    String seedSeed
    String minMinDepth
    Int minMinSupport
    Boolean withWithDownsampling
    String transitionsTransitionsMode
    File snpSnpFile
    String outOutChrom
    String formatFormat
    String sampleSampleNames
    File sampleSampleNameFile
    String sampleSamplePopName
    File eigenEigenStratOutPrefix
  }
  command <<<
    pileupCaller \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(minMinDepth) then ("--minDepth " +  '"' + minMinDepth + '"') else ""} \
      ~{if defined(minMinSupport) then ("--minSupport " +  '"' + minMinSupport + '"') else ""} \
      ~{true="--withDownSampling" false="" withWithDownsampling} \
      ~{if defined(transitionsTransitionsMode) then ("--transitionsMode " +  '"' + transitionsTransitionsMode + '"') else ""} \
      ~{if defined(snpSnpFile) then ("--snpFile " +  '"' + snpSnpFile + '"') else ""} \
      ~{if defined(outOutChrom) then ("--outChrom " +  '"' + outOutChrom + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(sampleSampleNames) then ("--sampleNames " +  '"' + sampleSampleNames + '"') else ""} \
      ~{if defined(sampleSampleNameFile) then ("--sampleNameFile " +  '"' + sampleSampleNameFile + '"') else ""} \
      ~{if defined(sampleSamplePopName) then ("--samplePopName " +  '"' + sampleSamplePopName + '"') else ""} \
      ~{if defined(eigenEigenStratOutPrefix) then ("--eigenstratOutPrefix " +  '"' + eigenEigenStratOutPrefix + '"') else ""}
  >>>
}