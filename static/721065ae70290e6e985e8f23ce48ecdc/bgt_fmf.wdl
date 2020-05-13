version 1.0

task BgtFmf {
  input {
    Boolean mM
    Boolean nN
    String? fmfFmf
    String? inInFmf
    String? conditionCondition
  }
  command <<<
    bgt fmf \
      ~{fmfFmf} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{inInFmf} \
      ~{conditionCondition}
  >>>
}