version 1.0

task GappaPrepareExtract {
  input {
    String jJPlacePath
    String cladeCladeListFile
    String fastFastAPath
    Float thresholdThreshold
    Boolean pointPointMass
    String colorColorTreeFile
    String samplesSamplesOutDir
    String sequencesSequencesOutDir
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa prepare extract \
      ~{optionsOptions} \
      ~{if defined(jJPlacePath) then ("--jplace-path " +  '"' + jJPlacePath + '"') else ""} \
      ~{if defined(cladeCladeListFile) then ("--clade-list-file " +  '"' + cladeCladeListFile + '"') else ""} \
      ~{if defined(fastFastAPath) then ("--fasta-path " +  '"' + fastFastAPath + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{true="--point-mass" false="" pointPointMass} \
      ~{if defined(colorColorTreeFile) then ("--color-tree-file " +  '"' + colorColorTreeFile + '"') else ""} \
      ~{if defined(samplesSamplesOutDir) then ("--samples-out-dir " +  '"' + samplesSamplesOutDir + '"') else ""} \
      ~{if defined(sequencesSequencesOutDir) then ("--sequences-out-dir " +  '"' + sequencesSequencesOutDir + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}