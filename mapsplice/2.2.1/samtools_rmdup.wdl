version 1.0

task SamtoolsRmdup {
  input {
    Boolean sS
    Boolean sS
    String? inputsInputsRtbAm
    String? outputOutputBam
  }
  command <<<
    samtools rmdup \
      ~{inputsInputsRtbAm} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{outputOutputBam}
  >>>
}