version 1.0

task Xpclr {
  input {
    String outOut
    String formatFormat
    String inputInput
    String gGDistKey
    String samplesSamplesA
    String samplesSamplesB
    String rRRate
    String mapMap
    String popaPopa
    String popPopB
    String chrChr
    String ldLd
    Boolean phasedPhased
    String verboseVerbose
    Int maxMaxSnps
    Int minMinSnps
    Int sizeSize
    String startStart
    String stopStop
    String stepStep
  }
  command <<<
    xpclr \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(gGDistKey) then ("--gdistkey " +  '"' + gGDistKey + '"') else ""} \
      ~{if defined(samplesSamplesA) then ("--samplesA " +  '"' + samplesSamplesA + '"') else ""} \
      ~{if defined(samplesSamplesB) then ("--samplesB " +  '"' + samplesSamplesB + '"') else ""} \
      ~{if defined(rRRate) then ("--rrate " +  '"' + rRRate + '"') else ""} \
      ~{if defined(mapMap) then ("--map " +  '"' + mapMap + '"') else ""} \
      ~{if defined(popaPopa) then ("--popA " +  '"' + popaPopa + '"') else ""} \
      ~{if defined(popPopB) then ("--popB " +  '"' + popPopB + '"') else ""} \
      ~{if defined(chrChr) then ("--chr " +  '"' + chrChr + '"') else ""} \
      ~{if defined(ldLd) then ("--ld " +  '"' + ldLd + '"') else ""} \
      ~{true="--phased" false="" phasedPhased} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(maxMaxSnps) then ("--maxsnps " +  '"' + maxMaxSnps + '"') else ""} \
      ~{if defined(minMinSnps) then ("--minsnps " +  '"' + minMinSnps + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""}
  >>>
}