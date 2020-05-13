version 1.0

task DimspyProcessScans {
  input {
    String inputInput
    String outputOutput
    File fileFileList
    String functionFunctionNoise
    String snrSnrThreshold
    String ppmPpm
    Int minMinScans
    Int minMinFraction
    String rsdRsdThreshold
    Boolean skipSkipStitching
    String ringingRingingThreshold
    String eE
    String xX
    String zZ
    String reportReport
    String blockBlockSize
    String nNCpus
  }
  command <<<
    dimspy process-scans \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(fileFileList) then ("--filelist " +  '"' + fileFileList + '"') else ""} \
      ~{if defined(functionFunctionNoise) then ("--function-noise " +  '"' + functionFunctionNoise + '"') else ""} \
      ~{if defined(snrSnrThreshold) then ("--snr-threshold " +  '"' + snrSnrThreshold + '"') else ""} \
      ~{if defined(ppmPpm) then ("--ppm " +  '"' + ppmPpm + '"') else ""} \
      ~{if defined(minMinScans) then ("--min_scans " +  '"' + minMinScans + '"') else ""} \
      ~{if defined(minMinFraction) then ("--min-fraction " +  '"' + minMinFraction + '"') else ""} \
      ~{if defined(rsdRsdThreshold) then ("--rsd-threshold " +  '"' + rsdRsdThreshold + '"') else ""} \
      ~{true="--skip-stitching" false="" skipSkipStitching} \
      ~{if defined(ringingRingingThreshold) then ("--ringing-threshold " +  '"' + ringingRingingThreshold + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(reportReport) then ("--report " +  '"' + reportReport + '"') else ""} \
      ~{if defined(blockBlockSize) then ("--block-size " +  '"' + blockBlockSize + '"') else ""} \
      ~{if defined(nNCpus) then ("--ncpus " +  '"' + nNCpus + '"') else ""}
  >>>
}