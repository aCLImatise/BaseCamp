version 1.0

task AbyssSamtoafg {
  input {
    Boolean? eid
    Boolean? iid
    Boolean? mean
    Boolean? sd
    String contigs_dot_fa
    String alignments_dots_am
  }
  command <<<
    abyss-samtoafg \
      ~{contigs_dot_fa} \
      ~{alignments_dots_am} \
      ~{true="--eid" false="" eid} \
      ~{true="--iid" false="" iid} \
      ~{true="--mean" false="" mean} \
      ~{true="--sd" false="" sd}
  >>>
  parameter_meta {
    eid: "the EID of the library"
    iid: "the IID of the library"
    mean: "the mean of the fragment-size"
    sd: "the standard deviation of the fragment-size"
    contigs_dot_fa: ""
    alignments_dots_am: ""
  }
}