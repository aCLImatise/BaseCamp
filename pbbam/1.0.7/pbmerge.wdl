version 1.0

task Pbmerge {
  input {
    Boolean oO
    Boolean noNoPbi
    String? inputInput
  }
  command <<<
    pbmerge \
      ~{inputInput} \
      ~{true="-o" false="" oO} \
      ~{true="--no-pbi" false="" noNoPbi}
  >>>
}