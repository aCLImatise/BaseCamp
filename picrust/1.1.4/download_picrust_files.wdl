version 1.0

task DownloadPicrustFiles.py {
  input {
    Boolean verboseVerbose
    String typeTypeOfPrediction
    String ggGgVersion
    Boolean withWithConfidence
    Boolean forceForce
  }
  command <<<
    download_picrust_files.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(typeTypeOfPrediction) then ("--type_of_prediction " +  '"' + typeTypeOfPrediction + '"') else ""} \
      ~{if defined(ggGgVersion) then ("--gg_version " +  '"' + ggGgVersion + '"') else ""} \
      ~{true="--with_confidence" false="" withWithConfidence} \
      ~{true="--force" false="" forceForce}
  >>>
}