version 1.0

task ShowAlignsDeltafileRef ID {
  input {
    String? qryQryId
  }
  command <<<
    show-aligns deltafile ref ID \
      ~{qryQryId}
  >>>
}