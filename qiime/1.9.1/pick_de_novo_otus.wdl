version 1.0

task PickDeNovoOtus.py {
  input {
    String inputInputFp
    String outputOutputDir
  }
  command <<<
    pick_de_novo_otus.py \
      ~{if defined(inputInputFp) then ("--input_fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}