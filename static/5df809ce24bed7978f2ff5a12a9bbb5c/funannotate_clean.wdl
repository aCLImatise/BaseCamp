version 1.0

task FunannotateClean {
  input {
    Boolean inputInput
    Boolean outOut
    Boolean pPIdent
    Boolean covCov
    Boolean minMinLen
    Boolean exhaustiveExhaustive
    String? argumentsArguments
  }
  command <<<
    funannotate clean \
      ~{argumentsArguments} \
      ~{true="--input" false="" inputInput} \
      ~{true="--out" false="" outOut} \
      ~{true="--pident" false="" pPIdent} \
      ~{true="--cov" false="" covCov} \
      ~{true="--minlen" false="" minMinLen} \
      ~{true="--exhaustive" false="" exhaustiveExhaustive}
  >>>
}