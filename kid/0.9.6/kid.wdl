version 1.0

task Kid {
  input {
    String encodingEncoding
    String outputOutput
    String sS
    File? fileFile
    String? argsArgs
  }
  command <<<
    kid \
      ~{fileFile} \
      ~{if defined(encodingEncoding) then ("--encoding " +  '"' + encodingEncoding + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{argsArgs}
  >>>
}