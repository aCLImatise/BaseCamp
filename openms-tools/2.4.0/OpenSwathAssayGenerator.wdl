version 1.0

task OpenSwathAssayGenerator {
  input {
    File inIn
    String inInType
    File outOut
    String outOutType
    Int minMinTransitions
    Int maxMaxTransitions
    String allowedAllowedFragmentTypes
    String allowedAllowedFragmentCharges
    Boolean enableEnableDetectionSpecificLosses
    Boolean enableEnableDetectionUnspecificLosses
    String precursorPrecursorMzThreshold
    String precursorPrecursorLowerMzLimit
    String precursorPrecursorUpperMzLimit
    String productProductMzThreshold
    String productProductLowerMzLimit
    String productProductUpperMzLimit
    File swathSwathWindowsFile
    File uniUniModFile
    Boolean enableEnableIpf
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    OpenSwathAssayGenerator \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInType) then ("-in_type " +  '"' + inInType + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutType) then ("-out_type " +  '"' + outOutType + '"') else ""} \
      ~{if defined(minMinTransitions) then ("-min_transitions " +  '"' + minMinTransitions + '"') else ""} \
      ~{if defined(maxMaxTransitions) then ("-max_transitions " +  '"' + maxMaxTransitions + '"') else ""} \
      ~{if defined(allowedAllowedFragmentTypes) then ("-allowed_fragment_types " +  '"' + allowedAllowedFragmentTypes + '"') else ""} \
      ~{if defined(allowedAllowedFragmentCharges) then ("-allowed_fragment_charges " +  '"' + allowedAllowedFragmentCharges + '"') else ""} \
      ~{true="-enable_detection_specific_losses" false="" enableEnableDetectionSpecificLosses} \
      ~{true="-enable_detection_unspecific_losses" false="" enableEnableDetectionUnspecificLosses} \
      ~{if defined(precursorPrecursorMzThreshold) then ("-precursor_mz_threshold " +  '"' + precursorPrecursorMzThreshold + '"') else ""} \
      ~{if defined(precursorPrecursorLowerMzLimit) then ("-precursor_lower_mz_limit " +  '"' + precursorPrecursorLowerMzLimit + '"') else ""} \
      ~{if defined(precursorPrecursorUpperMzLimit) then ("-precursor_upper_mz_limit " +  '"' + precursorPrecursorUpperMzLimit + '"') else ""} \
      ~{if defined(productProductMzThreshold) then ("-product_mz_threshold " +  '"' + productProductMzThreshold + '"') else ""} \
      ~{if defined(productProductLowerMzLimit) then ("-product_lower_mz_limit " +  '"' + productProductLowerMzLimit + '"') else ""} \
      ~{if defined(productProductUpperMzLimit) then ("-product_upper_mz_limit " +  '"' + productProductUpperMzLimit + '"') else ""} \
      ~{if defined(swathSwathWindowsFile) then ("-swath_windows_file " +  '"' + swathSwathWindowsFile + '"') else ""} \
      ~{if defined(uniUniModFile) then ("-unimod_file " +  '"' + uniUniModFile + '"') else ""} \
      ~{true="-enable_ipf" false="" enableEnableIpf} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}