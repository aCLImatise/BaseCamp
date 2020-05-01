version 1.0

task QcliMakeRst {
  input {
    String inputInputFps
    String outputOutputDir
  }
  command <<<
    qcli_make_rst \
      ~{if defined(inputInputFps) then ("--input_fps " +  '"' + inputInputFps + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}