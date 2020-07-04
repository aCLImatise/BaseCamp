version 1.0

task ConusFold {
  input {
    Boolean? g_shift_hydrogen
    Boolean? flat
    Boolean? options
  }
  command <<<
    conus_fold \
      ~{true="-H" false="" g_shift_hydrogen} \
      ~{true="--flat" false="" flat} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    g_shift_hydrogen: "(with -g) shift to hydrogen bonding scoring  "
    flat: "(with -g) flat scoring scheme "
    options: ""
  }
}