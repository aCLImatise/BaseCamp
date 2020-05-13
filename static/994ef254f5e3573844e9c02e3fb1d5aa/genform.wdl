version 1.0

task Genform {
  input {
    String? lossLoss
    Int? inInTens
    String? dbeDbe
    String? cmCm
    String? pcPc
    String? scSc
    String? noNoRef
  }
  command <<<
    genform \
      ~{lossLoss} \
      ~{inInTens} \
      ~{dbeDbe} \
      ~{cmCm} \
      ~{pcPc} \
      ~{scSc} \
      ~{noNoRef}
  >>>
}