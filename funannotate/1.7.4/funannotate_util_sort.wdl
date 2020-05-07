version 1.0

task FunannotateUtilSort {
  input {
    Boolean inputInput
    Boolean outOut
    Boolean baseBase
    Boolean minMinLen
    String? sortSort
    String? argumentsArguments
  }
  command <<<
    funannotate util sort \
      ~{sortSort} \
      ~{true="--input" false="" inputInput} \
      ~{true="--out" false="" outOut} \
      ~{true="--base" false="" baseBase} \
      ~{true="--minlen" false="" minMinLen} \
      ~{argumentsArguments}
  >>>
}