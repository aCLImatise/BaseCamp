version 1.0

task MbRemoveDuplicates {
  input {
    Boolean? verbose
  }
  command <<<
    mb-remove-duplicates \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "verbose output"
  }
}