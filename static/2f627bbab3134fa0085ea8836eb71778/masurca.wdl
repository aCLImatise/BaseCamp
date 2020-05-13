version 1.0

task Masurca {
  input {
    Boolean outputOutput
    Boolean generateGenerate
    Boolean pathPath
    Boolean ldLdLibraryPath
    Boolean skipSkipChecking
  }
  command <<<
    masurca \
      ~{true="--output" false="" outputOutput} \
      ~{true="--generate" false="" generateGenerate} \
      ~{true="--path" false="" pathPath} \
      ~{true="--ld-library-path" false="" ldLdLibraryPath} \
      ~{true="--skip-checking" false="" skipSkipChecking}
  >>>
}