version 1.0

task DxJobutilAddOutputCLASSNAME {
  input {
    Boolean? class
    Boolean? output_field_array
    String name
    String value
  }
  command <<<
    dx-jobutil-add-output CLASSNAME \
      ~{name} \
      ~{value} \
      ~{true="--class" false="" class} \
      ~{true="--array" false="" output_field_array}
  >>>
  parameter_meta {
    class: "[CLASSNAME]  Class of output for formatting purposes, e.g. \"int\"; default \"auto\""
    output_field_array: "Output field is an array"
    name: "Name of the output field name"
    value: "Value of the output field"
  }
}