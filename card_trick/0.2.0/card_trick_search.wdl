version 1.0

task CardTrickSearch {
  input {
    String inputInput
    String formatFormatOutput
    String outputOutputName
    File pathPath
    String termTerm
    Boolean batchBatch
    String inputInput2
    String termTerm2
    Boolean batchBatch2
    Boolean quietQuiet
  }
  command <<<
    card-trick search \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(formatFormatOutput) then ("--format_output " +  '"' + formatFormatOutput + '"') else ""} \
      ~{if defined(outputOutputName) then ("--output_name " +  '"' + outputOutputName + '"') else ""} \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""} \
      ~{if defined(termTerm) then ("--term " +  '"' + termTerm + '"') else ""} \
      ~{true="--batch" false="" batchBatch} \
      ~{if defined(inputInput2) then ("--input_2 " +  '"' + inputInput2 + '"') else ""} \
      ~{if defined(termTerm2) then ("--term_2 " +  '"' + termTerm2 + '"') else ""} \
      ~{true="--batch_2" false="" batchBatch2} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}