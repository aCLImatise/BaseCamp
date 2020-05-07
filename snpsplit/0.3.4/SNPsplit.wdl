version 1.0

task SNPsplit {
  input {
    Boolean conflictingConflicting
    Boolean samSam
    String? snpSnpId
  }
  command <<<
    SNPsplit \
      ~{snpSnpId} \
      ~{true="--conflicting" false="" conflictingConflicting} \
      ~{true="--sam" false="" samSam}
  >>>
}