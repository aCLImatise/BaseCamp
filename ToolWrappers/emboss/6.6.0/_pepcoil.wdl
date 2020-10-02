version 1.0

task Pepcoil {
  input {
    Boolean? window
    Boolean? frame
    Boolean? other
  }
  command <<<
    _pepcoil \
      ~{if (window) then "-window" else ""} \
      ~{if (frame) then "-frame" else ""} \
      ~{if (other) then "-other" else ""}
  >>>
  parameter_meta {
    window: "integer    [28] Window size (Integer from 7 to 28)"
    frame: "boolean    [Yes if -coil is true] Show coil frameshifts"
    other: "boolean    [N] Report non coiled coil regions"
  }
  output {
    File out_stdout = stdout()
  }
}