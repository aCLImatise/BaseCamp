version 1.0

task DownloadPicrustFilespy {
  input {
    Boolean? verbose
    String? type_of_prediction
    Int? gg_version
    Boolean? with_confidence
    Boolean? force
    String download_pic_rust_files_do_tpy
  }
  command <<<
    download_picrust_files_py \
      ~{download_pic_rust_files_do_tpy} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(type_of_prediction) then ("--type_of_prediction " +  '"' + type_of_prediction + '"') else ""} \
      ~{if defined(gg_version) then ("--gg_version " +  '"' + gg_version + '"') else ""} \
      ~{if (with_confidence) then "--with_confidence" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    type_of_prediction: "Type of functional predictions. Valid choices are: ko,\\ncog, rfam [default: ko]"
    gg_version: "Version of GreenGenes that was used for OTU picking.\\nValid choices are: 13_5, 18may2012 [default: 13_5]"
    with_confidence: "Download confidence interval files (only available for\\nGreenGenes 13_5) [default: False]"
    force: "Force download of files (i.e. overwrite existing)\\n[default: False]\\n"
    download_pic_rust_files_do_tpy: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}