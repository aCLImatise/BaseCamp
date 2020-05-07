version 1.0

task PickClosedReferenceOtus.py {
  input {
    String inputInputFp
    String outputOutputDir
  }
  command <<<
    pick_closed_reference_otus.py \
      ~{if defined(inputInputFp) then ("--input_fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}