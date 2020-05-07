version 1.0

task Tr {
  input {
    Boolean complementComplement
    Boolean deleteDelete
    Boolean squeezeSqueezeRepeats
    Boolean truncateTruncateSet1
  }
  command <<<
    tr \
      ~{true="--complement" false="" complementComplement} \
      ~{true="--delete" false="" deleteDelete} \
      ~{true="--squeeze-repeats" false="" squeezeSqueezeRepeats} \
      ~{true="--truncate-set1" false="" truncateTruncateSet1}
  >>>
}