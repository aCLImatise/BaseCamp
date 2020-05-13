version 1.0

task RemovePseudoknotsSmp {
  input {
    String? removeRemovePseudoKnots
    String? inputInputCtFile
    String? outputOutputCtFile
  }
  command <<<
    RemovePseudoknots-smp \
      ~{removeRemovePseudoKnots} \
      ~{inputInputCtFile} \
      ~{outputOutputCtFile}
  >>>
}