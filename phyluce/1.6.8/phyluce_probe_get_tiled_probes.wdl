version 1.0

task PhyluceProbeGetTiledProbes {
  input {
    String inputInput
    String outputOutput
    String probeProbePrefix
    String designerDesigner
    String designDesign
    Int probeProbeLength
    String tilingTilingDensity
    String overlapOverlap
    String probeProbeBed
    String locusLocusBed
    String maskingMasking
    Boolean doDoNotRemoveAmbiguous
    Boolean removeRemoveGc
    String startStartIndex
    Boolean twoTwoProbes
  }
  command <<<
    phyluce_probe_get_tiled_probes \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(probeProbePrefix) then ("--probe-prefix " +  '"' + probeProbePrefix + '"') else ""} \
      ~{if defined(designerDesigner) then ("--designer " +  '"' + designerDesigner + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(probeProbeLength) then ("--probe-length " +  '"' + probeProbeLength + '"') else ""} \
      ~{if defined(tilingTilingDensity) then ("--tiling-density " +  '"' + tilingTilingDensity + '"') else ""} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(probeProbeBed) then ("--probe-bed " +  '"' + probeProbeBed + '"') else ""} \
      ~{if defined(locusLocusBed) then ("--locus-bed " +  '"' + locusLocusBed + '"') else ""} \
      ~{if defined(maskingMasking) then ("--masking " +  '"' + maskingMasking + '"') else ""} \
      ~{true="--do-not-remove-ambiguous" false="" doDoNotRemoveAmbiguous} \
      ~{true="--remove-gc" false="" removeRemoveGc} \
      ~{if defined(startStartIndex) then ("--start-index " +  '"' + startStartIndex + '"') else ""} \
      ~{true="--two-probes" false="" twoTwoProbes}
  >>>
}