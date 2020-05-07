version 1.0

task ShowAlignsRef ID {
  input {
    String? deltaDeltaFile
    String? refidRefid
    String? qryQryId
  }
  command <<<
    show-aligns ref ID \
      ~{deltaDeltaFile} \
      ~{refidRefid} \
      ~{qryQryId}
  >>>
}