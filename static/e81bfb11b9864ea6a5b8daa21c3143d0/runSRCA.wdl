version 1.0

task RunSRCA.pl {
  input {
    Boolean outputOutput
    Boolean generateGenerate
    Boolean pathPath
    Boolean ldLdLibraryPath
    Boolean skipSkipChecking
  }
  command <<<
    runSRCA.pl \
      ~{true="--output" false="" outputOutput} \
      ~{true="--generate" false="" generateGenerate} \
      ~{true="--path" false="" pathPath} \
      ~{true="--ld-library-path" false="" ldLdLibraryPath} \
      ~{true="--skip-checking" false="" skipSkipChecking}
  >>>
}