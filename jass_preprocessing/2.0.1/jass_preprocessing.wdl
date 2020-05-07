version 1.0

task JassPreprocessing {
  input {
    String gGWasInfo
    String refRefPath
    String inputInputFolder
    String diagnosticDiagnosticFolder
    String outputOutputFolder
    String outputOutputFolder1File
    String percentPercentSampleSize
    Int minimumMinimumMaf
    String maskMaskMhc
    String additionalAdditionalMaskedRegion
  }
  command <<<
    jass_preprocessing \
      ~{if defined(gGWasInfo) then ("--gwas-info " +  '"' + gGWasInfo + '"') else ""} \
      ~{if defined(refRefPath) then ("--ref-path " +  '"' + refRefPath + '"') else ""} \
      ~{if defined(inputInputFolder) then ("--input-folder " +  '"' + inputInputFolder + '"') else ""} \
      ~{if defined(diagnosticDiagnosticFolder) then ("--diagnostic-folder " +  '"' + diagnosticDiagnosticFolder + '"') else ""} \
      ~{if defined(outputOutputFolder) then ("--output-folder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{if defined(outputOutputFolder1File) then ("--output-folder-1-file " +  '"' + outputOutputFolder1File + '"') else ""} \
      ~{if defined(percentPercentSampleSize) then ("--percent-sample-size " +  '"' + percentPercentSampleSize + '"') else ""} \
      ~{if defined(minimumMinimumMaf) then ("--minimum-MAF " +  '"' + minimumMinimumMaf + '"') else ""} \
      ~{if defined(maskMaskMhc) then ("--mask-MHC " +  '"' + maskMaskMhc + '"') else ""} \
      ~{if defined(additionalAdditionalMaskedRegion) then ("--additional-masked-region " +  '"' + additionalAdditionalMaskedRegion + '"') else ""}
  >>>
}