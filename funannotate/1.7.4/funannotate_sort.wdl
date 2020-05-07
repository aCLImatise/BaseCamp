version 1.0

task FunannotateSort {
  input {
    Boolean inputInput
    Boolean outOut
    Boolean baseBase
    Boolean minMinLen
    String? argumentsArguments
  }
  command <<<
    funannotate sort \
      ~{argumentsArguments} \
      ~{true="--input" false="" inputInput} \
      ~{true="--out" false="" outOut} \
      ~{true="--base" false="" baseBase} \
      ~{true="--minlen" false="" minMinLen}
  >>>
}