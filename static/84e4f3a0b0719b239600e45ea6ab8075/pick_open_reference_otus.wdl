version 1.0

task PickOpenReferenceOtus.py {
  input {
    String inputInputFps
    String outputOutputDir
  }
  command <<<
    pick_open_reference_otus.py \
      ~{if defined(inputInputFps) then ("--input_fps " +  '"' + inputInputFps + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}