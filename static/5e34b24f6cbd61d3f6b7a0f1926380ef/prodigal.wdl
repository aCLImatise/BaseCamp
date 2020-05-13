version 1.0

task Prodigal.py {
  input {
    String inputInput
    String outputOutput
  }
  command <<<
    prodigal.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}