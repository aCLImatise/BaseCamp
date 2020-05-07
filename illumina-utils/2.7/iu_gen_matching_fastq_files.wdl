version 1.0

task IuGenMatchingFastqFiles {
  input {
    Boolean identifierIdentifierTested
    Boolean sequentialSequential
  }
  command <<<
    iu-gen-matching-fastq-files \
      ~{true="--identifier-tested" false="" identifierIdentifierTested} \
      ~{true="--sequential" false="" sequentialSequential}
  >>>
}