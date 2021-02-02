version 1.0

task Merlinoffline {
  input {
    Boolean? ped_infer
    Boolean? custom
  }
  command <<<
    merlin_offline \
      ~{if (ped_infer) then "--pedinfer" else ""} \
      ~{if (custom) then "--custom" else ""}
  >>>
  parameter_meta {
    ped_infer: "[merlin-infer.ped]"
    custom: "[covars.tbl]"
  }
  output {
    File out_stdout = stdout()
  }
}