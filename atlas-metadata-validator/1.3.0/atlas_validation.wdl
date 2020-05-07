version 1.0

task AtlasValidation.py {
  input {
    String dataDataDir
    Boolean verboseVerbose
    Boolean hcaHca
    Boolean singleSingleCell
    Boolean sequencingSequencing
    Boolean microarrayMicroarray
    Boolean skipSkipFileChecks
    String? idfIdf
  }
  command <<<
    atlas_validation.py \
      ~{idfIdf} \
      ~{if defined(dataDataDir) then ("--data_dir " +  '"' + dataDataDir + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-hca" false="" hcaHca} \
      ~{true="--singlecell" false="" singleSingleCell} \
      ~{true="--sequencing" false="" sequencingSequencing} \
      ~{true="--microarray" false="" microarrayMicroarray} \
      ~{true="--skip-file-checks" false="" skipSkipFileChecks}
  >>>
}