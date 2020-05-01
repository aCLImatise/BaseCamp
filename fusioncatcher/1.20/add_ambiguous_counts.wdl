version 1.0

task AddAmbiguousCounts.py {
  input {
    String inputInput
    String inputInputAmbiguous
    String outputOutput
  }
  command <<<
    add_ambiguous_counts.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(inputInputAmbiguous) then ("--input_ambiguous " +  '"' + inputInputAmbiguous + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}