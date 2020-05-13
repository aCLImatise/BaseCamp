version 1.0

task GappaEditMultiplicity {
  input {
    String jJPlacePath
    String multiplicityMultiplicityFile
    String fastFastAPath
    String keepKeepFullLabel
    String outOutDir
    String fileFilePrefix
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa edit multiplicity \
      ~{optionsOptions} \
      ~{if defined(jJPlacePath) then ("--jplace-path " +  '"' + jJPlacePath + '"') else ""} \
      ~{if defined(multiplicityMultiplicityFile) then ("--multiplicity-file " +  '"' + multiplicityMultiplicityFile + '"') else ""} \
      ~{if defined(fastFastAPath) then ("--fasta-path " +  '"' + fastFastAPath + '"') else ""} \
      ~{if defined(keepKeepFullLabel) then ("--keep-full-label " +  '"' + keepKeepFullLabel + '"') else ""} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(fileFilePrefix) then ("--file-prefix " +  '"' + fileFilePrefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}