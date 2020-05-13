version 1.0

task Samtoafg {
  input {
    Boolean eidEid
    Boolean iidIid
    Boolean meanMean
    Boolean sdSd
  }
  command <<<
    samtoafg \
      ~{true="--eid" false="" eidEid} \
      ~{true="--iid" false="" iidIid} \
      ~{true="--mean" false="" meanMean} \
      ~{true="--sd" false="" sdSd}
  >>>
}