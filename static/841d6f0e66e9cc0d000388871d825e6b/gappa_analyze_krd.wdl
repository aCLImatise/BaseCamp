version 1.0

task GappaAnalyzeKrd {
  input {
    String jJPlacePath
    Float exponentExponent
    Boolean normalizeNormalize
    Boolean pointPointMass
    Boolean ignoreIgnoreMultiplicities
    String outOutDir
    String fileFilePrefix
    String matrixMatrixFormat
    Boolean omitOmitMatrixLabels
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa analyze krd \
      ~{optionsOptions} \
      ~{if defined(jJPlacePath) then ("--jplace-path " +  '"' + jJPlacePath + '"') else ""} \
      ~{if defined(exponentExponent) then ("--exponent " +  '"' + exponentExponent + '"') else ""} \
      ~{true="--normalize" false="" normalizeNormalize} \
      ~{true="--point-mass" false="" pointPointMass} \
      ~{true="--ignore-multiplicities" false="" ignoreIgnoreMultiplicities} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(fileFilePrefix) then ("--file-prefix " +  '"' + fileFilePrefix + '"') else ""} \
      ~{if defined(matrixMatrixFormat) then ("--matrix-format " +  '"' + matrixMatrixFormat + '"') else ""} \
      ~{true="--omit-matrix-labels" false="" omitOmitMatrixLabels} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}