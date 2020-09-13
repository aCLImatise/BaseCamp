version 1.0

task QcliMakeRst {
  input {
    Boolean? verbose
    File? input_fps
    File? output_dir
  }
  command <<<
    qcli_make_rst \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(input_fps) then ("--input_fps " +  '"' + input_fps + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    input_fps: "the input file(s) to generate rst files for [REQUIRED]"
    output_dir: "the directory where the resulting rst file(s) should\\nbe written [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}