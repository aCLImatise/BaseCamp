version 1.0

task PbsEncode {
  input {
    Boolean? discard_gaps
    String pbs_train_dot
  }
  command <<<
    pbsEncode \
      ~{pbs_train_dot} \
      ~{true="--discard-gaps" false="" discard_gaps}
  >>>
  parameter_meta {
    discard_gaps: "Discard gaps in the PBS.  Gaps in the input data are assumed to be represented by rows consisting of a single \"-\" character."
    pbs_train_dot: "pbsEncode anc.human-mouse.probs mammals.code > anc.human-mouse.bin"
  }
}