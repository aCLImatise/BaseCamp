version 1.0

task Shuffle.py {
  input {
    String inputInput1
    String inputInput2
    String outputOutput
  }
  command <<<
    shuffle.py \
      ~{if defined(inputInput1) then ("--input_1 " +  '"' + inputInput1 + '"') else ""} \
      ~{if defined(inputInput2) then ("--input_2 " +  '"' + inputInput2 + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}