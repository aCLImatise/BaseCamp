version 1.0

task Samtoafg {
  input {
    Boolean? eid
    Boolean? iid
    Boolean? mean
    Boolean? sd
    String abyss_sam_to_afg
    String contigs_dot_fa
    String alignments_dots_am
  }
  command <<<
    samtoafg \
      ~{abyss_sam_to_afg} \
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
    abyss_sam_to_afg: ""
    contigs_dot_fa: ""
    alignments_dots_am: ""
  }
}