version 1.0

task ShowAlignsQry ID {
  input {
    String? deltaDeltaFile
    String? refidRefid
    String? qryQryId
  }
  command <<<
    show-aligns qry ID \
      ~{deltaDeltaFile} \
      ~{refidRefid} \
      ~{qryQryId}
  >>>
}