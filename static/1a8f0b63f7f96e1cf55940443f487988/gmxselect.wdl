version 1.0

task Gmxselect {
  input {
    String? c
    String? input_structure_path
    String? output_ndx_path
    String? input_ndx_path
  }
  command <<<
    gmxselect \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(input_structure_path) then ("--input_structure_path " +  '"' + input_structure_path + '"') else ""} \
      ~{if defined(output_ndx_path) then ("--output_ndx_path " +  '"' + output_ndx_path + '"') else ""} \
      ~{if defined(input_ndx_path) then ("--input_ndx_path " +  '"' + input_ndx_path + '"') else ""}
  >>>
  parameter_meta {
    c: ""
    input_structure_path: ""
    output_ndx_path: ""
    input_ndx_path: ""
  }
}