version 1.0

task Dxjobutiladdoutput {
  input {
    Boolean? class
    Boolean? output_field_array
  }
  command <<<
    dx_jobutil_add_output \
      ~{if (class) then "--class" else ""} \
      ~{if (output_field_array) then "--array" else ""}
  >>>
  parameter_meta {
    class: "[CLASSNAME]  Class of output for formatting purposes, e.g. \\\"int\\\";\\ndefault \\\"auto\\\""
    output_field_array: "Output field is an array"
  }
  output {
    File out_stdout = stdout()
  }
}