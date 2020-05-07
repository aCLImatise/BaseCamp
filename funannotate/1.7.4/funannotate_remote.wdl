version 1.0

task FunannotateRemote {
  input {
    Boolean genbankGenbank
    Boolean outOut
    Boolean forceForce
    String? argumentsArguments
  }
  command <<<
    funannotate remote \
      ~{argumentsArguments} \
      ~{true="--genbank" false="" genbankGenbank} \
      ~{true="--out" false="" outOut} \
      ~{true="--force" false="" forceForce}
  >>>
}