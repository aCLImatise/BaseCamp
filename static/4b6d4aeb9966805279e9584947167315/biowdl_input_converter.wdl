version 1.0

task BiowdlInputConverter {
  input {
    String outputOutput
    Boolean validateValidate
    Boolean oldOld
    Boolean skipSkipFileCheck
    Boolean checkCheckFileMd5sums
    String? sampleSampleSheet
  }
  command <<<
    biowdl-input-converter \
      ~{sampleSampleSheet} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--validate" false="" validateValidate} \
      ~{true="--old" false="" oldOld} \
      ~{true="--skip-file-check" false="" skipSkipFileCheck} \
      ~{true="--check-file-md5sums" false="" checkCheckFileMd5sums}
  >>>
}