version 1.0

task FunannotateUtilRemote {
  input {
    Boolean genbankGenbank
    Boolean outOut
    Boolean forceForce
    String? remoteRemote
    String? argumentsArguments
  }
  command <<<
    funannotate util remote \
      ~{remoteRemote} \
      ~{true="--genbank" false="" genbankGenbank} \
      ~{true="--out" false="" outOut} \
      ~{true="--force" false="" forceForce} \
      ~{argumentsArguments}
  >>>
}