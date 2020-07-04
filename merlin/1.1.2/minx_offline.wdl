version 1.0

task MinxOffline {
  input {
    Boolean? dat_infer
    Boolean? ped_infer
    Boolean? custom
  }
  command <<<
    minx-offline \
      ~{true="--datinfer" false="" dat_infer} \
      ~{true="--pedinfer" false="" ped_infer} \
      ~{true="--custom" false="" custom}
  >>>
  parameter_meta {
    dat_infer: "[merlin-infer.dat],"
    ped_infer: "[merlin-infer.ped]"
    custom: "[covars.tbl]"
  }
}