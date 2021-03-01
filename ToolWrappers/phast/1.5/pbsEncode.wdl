version 1.0

task PbsEncode {
  input {
    Boolean? discard_gaps
    String pbs_train_dot
  }
  command <<<
    pbsEncode \
      ~{pbs_train_dot} \
      ~{if (discard_gaps) then "--discard-gaps" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    discard_gaps: "Discard gaps in the PBS.  Gaps in the input data are assumed\\nto be represented by rows consisting of a single \\\"-\\\" character."
    pbs_train_dot: "pbsEncode anc.human-mouse.probs mammals.code > anc.human-mouse.bin"
  }
  output {
    File out_stdout = stdout()
  }
}