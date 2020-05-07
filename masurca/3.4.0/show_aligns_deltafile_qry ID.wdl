version 1.0

task ShowAlignsDeltafileQry ID {
  input {
    String? refidRefid
    String? qryQryId
  }
  command <<<
    show-aligns deltafile qry ID \
      ~{refidRefid} \
      ~{qryQryId}
  >>>
}