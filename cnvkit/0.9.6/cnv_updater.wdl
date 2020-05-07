version 1.0

task CnvUpdater.py {
  input {
    String outputOutputDir
    String suffixSuffix
    String? cnnCnnFiles
  }
  command <<<
    cnv_updater.py \
      ~{cnnCnnFiles} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""}
  >>>
}