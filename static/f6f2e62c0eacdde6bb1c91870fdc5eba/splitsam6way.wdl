version 1.0

task Splitsam6way.sh {
  input {
    String? inputInput
    String? r1plusR1plus
    String? r1minusR1minus
    String? r1R1Unmapped
    String? r2plusR2plus
    String? r2minusR2minus
    String? r2R2Unmapped
  }
  command <<<
    splitsam6way.sh \
      ~{inputInput} \
      ~{r1plusR1plus} \
      ~{r1minusR1minus} \
      ~{r1R1Unmapped} \
      ~{r2plusR2plus} \
      ~{r2minusR2minus} \
      ~{r2R2Unmapped}
  >>>
}