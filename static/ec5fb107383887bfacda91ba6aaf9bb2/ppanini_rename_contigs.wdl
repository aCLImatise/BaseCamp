version 1.0

task PpaniniRenameContigs {
  input {
    String inputInput
    String outputOutput
  }
  command <<<
    ppanini_rename_contigs \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}