version 1.0

task Asndhuff {
  input {
    Boolean? input_file
    Boolean? output_file_optional
  }
  command <<<
    asndhuff \
      ~{true="-i" false="" input_file} \
      ~{true="-o" false="" output_file_optional}
  >>>
  parameter_meta {
    input_file: "Input file [File In]"
    output_file_optional: "Output file [File Out]  Optional"
  }
}