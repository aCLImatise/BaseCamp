version 1.0

task Helixturnhelix {
  input {
    Boolean? mean
    Boolean? sd_value
    Boolean? mins_d
    Boolean? boolean_use_data
  }
  command <<<
    helixturnhelix \
      ~{if (mean) then "-mean" else ""} \
      ~{if (sd_value) then "-sdvalue" else ""} \
      ~{if (mins_d) then "-minsd" else ""} \
      ~{if (boolean_use_data) then "-eightyseven" else ""}
  >>>
  parameter_meta {
    mean: "float      [238.71] Mean value (Number from 1.000 to\\n10000.000)"
    sd_value: "float      [293.61] Standard Deviation value (Number\\nfrom 1.000 to 10000.000)"
    mins_d: "float      [2.5] Minimum SD (Number from 0.000 to\\n100.000)"
    boolean_use_data: "boolean    Use the old (1987) weight data"
  }
  output {
    File out_stdout = stdout()
  }
}