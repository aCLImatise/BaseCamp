version 1.0

task ShortStack {
  input {
    Boolean lociLociFile
  }
  command <<<
    ShortStack \
      ~{true="--locifile" false="" lociLociFile}
  >>>
}