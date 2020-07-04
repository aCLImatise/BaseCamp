version 1.0

task BioconvertInit {
  input {
    String? input_extension
    String? output_extension
  }
  command <<<
    bioconvert_init \
      ~{if defined(input_extension) then ("--input-extension " +  '"' + input_extension + '"') else ""} \
      ~{if defined(output_extension) then ("--output-extension " +  '"' + output_extension + '"') else ""}
  >>>
  parameter_meta {
    input_extension: "input_extension"
    output_extension: "output_extension"
  }
}