version 1.0

task EasypqpConvert {
  input {
    File pepPepXml
    File spectraSpectra
    File uniUniMod
    File psmsPsms
    File peaksPeaks
    String excludeExcludeRange
    Float maxMaxDeltaUniMod
    Float maxMaxDeltaPpm
    String fragmentFragmentTypes
    String fragmentFragmentCharges
    Boolean enableEnableSpecificLosses
    Boolean enableEnableUnspecificLosses
    Float subsampleSubsampleFraction
  }
  command <<<
    easypqp convert \
      ~{if defined(pepPepXml) then ("--pepxml " +  '"' + pepPepXml + '"') else ""} \
      ~{if defined(spectraSpectra) then ("--spectra " +  '"' + spectraSpectra + '"') else ""} \
      ~{if defined(uniUniMod) then ("--unimod " +  '"' + uniUniMod + '"') else ""} \
      ~{if defined(psmsPsms) then ("--psms " +  '"' + psmsPsms + '"') else ""} \
      ~{if defined(peaksPeaks) then ("--peaks " +  '"' + peaksPeaks + '"') else ""} \
      ~{if defined(excludeExcludeRange) then ("--exclude-range " +  '"' + excludeExcludeRange + '"') else ""} \
      ~{if defined(maxMaxDeltaUniMod) then ("--max_delta_unimod " +  '"' + maxMaxDeltaUniMod + '"') else ""} \
      ~{if defined(maxMaxDeltaPpm) then ("--max_delta_ppm " +  '"' + maxMaxDeltaPpm + '"') else ""} \
      ~{if defined(fragmentFragmentTypes) then ("--fragment_types " +  '"' + fragmentFragmentTypes + '"') else ""} \
      ~{if defined(fragmentFragmentCharges) then ("--fragment_charges " +  '"' + fragmentFragmentCharges + '"') else ""} \
      ~{true="--enable_specific_losses" false="" enableEnableSpecificLosses} \
      ~{true="--enable_unspecific_losses" false="" enableEnableUnspecificLosses} \
      ~{if defined(subsampleSubsampleFraction) then ("--subsample_fraction " +  '"' + subsampleSubsampleFraction + '"') else ""}
  >>>
}