version 1.0

task PrepReference.sh {
  input {
    Boolean forceForce
    Boolean vV
    String? referenceReferenceFile
  }
  command <<<
    prepReference.sh \
      ~{referenceReferenceFile} \
      ~{true="--force" false="" forceForce} \
      ~{true="-v" false="" vV}
  >>>
}