version 1.0

task FunannotateUtilFix {
  input {
    Boolean inputInput
    Boolean tblTbl
    Boolean dropDrop
    Boolean outOut
    Boolean tbl2asnTbl2asn
    String? fixFix
    String? argumentsArguments
  }
  command <<<
    funannotate util fix \
      ~{fixFix} \
      ~{true="--input" false="" inputInput} \
      ~{true="--tbl" false="" tblTbl} \
      ~{true="--drop" false="" dropDrop} \
      ~{true="--out" false="" outOut} \
      ~{true="--tbl2asn" false="" tbl2asnTbl2asn} \
      ~{argumentsArguments}
  >>>
}