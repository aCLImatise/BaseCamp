version 1.0

task FunannotateFix {
  input {
    Boolean inputInput
    Boolean tblTbl
    Boolean dropDrop
    Boolean outOut
    Boolean tbl2asnTbl2asn
    String? argumentsArguments
  }
  command <<<
    funannotate fix \
      ~{argumentsArguments} \
      ~{true="--input" false="" inputInput} \
      ~{true="--tbl" false="" tblTbl} \
      ~{true="--drop" false="" dropDrop} \
      ~{true="--out" false="" outOut} \
      ~{true="--tbl2asn" false="" tbl2asnTbl2asn}
  >>>
}