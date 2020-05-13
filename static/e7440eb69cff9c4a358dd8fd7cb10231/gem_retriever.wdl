version 1.0

task GemRetriever {
  input {
    String indexIndex
    String inputInput
    String outputOutput
  }
  command <<<
    gem-retriever \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}