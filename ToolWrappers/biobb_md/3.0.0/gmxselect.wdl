version 1.0

task Gmxselect {
  input {
    String? input_ndx_path
    String? output_ndx_path
    File? input_structure_path
    String? c
  }
  command <<<
    gmxselect \
      ~{if defined(input_ndx_path) then ("--input_ndx_path " +  '"' + input_ndx_path + '"') else ""} \
      ~{if defined(output_ndx_path) then ("--output_ndx_path " +  '"' + output_ndx_path + '"') else ""} \
      ~{if defined(input_structure_path) then ("--input_structure_path " +  '"' + input_structure_path + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  parameter_meta {
    input_ndx_path: ""
    output_ndx_path: ""
    input_structure_path: ""
    c: ""
  }
  output {
    File out_stdout = stdout()
  }
}