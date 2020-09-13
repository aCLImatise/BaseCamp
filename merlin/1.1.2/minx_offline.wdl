version 1.0

task Minxoffline {
  input {
    Boolean? dat_infer
    Boolean? ped_infer
    Boolean? custom
  }
  command <<<
    minx_offline \
      ~{if (dat_infer) then "--datinfer" else ""} \
      ~{if (ped_infer) then "--pedinfer" else ""} \
      ~{if (custom) then "--custom" else ""}
  >>>
  parameter_meta {
    dat_infer: "[merlin-infer.dat],"
    ped_infer: "[merlin-infer.ped]"
    custom: "[covars.tbl]"
  }
  output {
    File out_stdout = stdout()
  }
}