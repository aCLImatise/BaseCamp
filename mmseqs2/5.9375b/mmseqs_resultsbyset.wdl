version 1.0

task MmseqsResultsbyset {
  input {
    Boolean alphaAlpha
    Boolean shortShortOutput
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs resultsbyset \
      ~{true="--alpha" false="" alphaAlpha} \
      ~{true="--short-output" false="" shortShortOutput} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}