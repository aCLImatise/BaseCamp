version 1.0

task AbyssSamtoafg {
  input {
    Boolean eidEid
    Boolean iidIid
    Boolean meanMean
    Boolean sdSd
  }
  command <<<
    abyss-samtoafg \
      ~{true="--eid" false="" eidEid} \
      ~{true="--iid" false="" iidIid} \
      ~{true="--mean" false="" meanMean} \
      ~{true="--sd" false="" sdSd}
  >>>
}