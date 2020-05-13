version 1.0

task SmofReverse {
  input {
    Boolean complementComplement
    Boolean noNoValidate
    Boolean preservePreserveColor
    Boolean forceForceColor
    String? inputInput
  }
  command <<<
    smof reverse \
      ~{inputInput} \
      ~{true="--complement" false="" complementComplement} \
      ~{true="--no-validate" false="" noNoValidate} \
      ~{true="--preserve-color" false="" preservePreserveColor} \
      ~{true="--force-color" false="" forceForceColor}
  >>>
}