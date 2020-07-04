version 1.0

task DownloadPicrustFiles.py {
  input {
    Boolean? verbose
    String? type_of_prediction
    String? gg_version
    Boolean? with_confidence
    Boolean? force
  }
  command <<<
    download_picrust_files.py \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(type_of_prediction) then ("--type_of_prediction " +  '"' + type_of_prediction + '"') else ""} \
      ~{if defined(gg_version) then ("--gg_version " +  '"' + gg_version + '"') else ""} \
      ~{true="--with_confidence" false="" with_confidence} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for debugging [default: False]"
    type_of_prediction: "Type of functional predictions. Valid choices are: ko, cog, rfam [default: ko]"
    gg_version: "Version of GreenGenes that was used for OTU picking. Valid choices are: 13_5, 18may2012 [default: 13_5]"
    with_confidence: "Download confidence interval files (only available for GreenGenes 13_5) [default: False]"
    force: "Force download of files (i.e. overwrite existing) [default: False]"
  }
}