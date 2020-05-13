version 1.0

task Pair8removal.py {
  input {
    String inputInput
    String outputOutput
    Int lengthLength
  }
  command <<<
    pair8removal.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""}
  >>>
}