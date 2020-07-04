version 1.0

task QcliMakeRst {
  input {
    String? input_fps
    String? output_dir
  }
  command <<<
    qcli_make_rst \
      ~{if defined(input_fps) then ("--input_fps " +  '"' + input_fps + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    input_fps: "the input file(s) to generate rst files for [REQUIRED]"
    output_dir: "the directory where the resulting rst file(s) should be written [REQUIRED]"
  }
}