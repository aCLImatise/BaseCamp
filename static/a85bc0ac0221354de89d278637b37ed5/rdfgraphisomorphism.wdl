version 1.0

task Rdfgraphisomorphism {
  input {
    Boolean stdinStdin
    String formatFormat
    File? fileFile1
    File? fileFileN
  }
  command <<<
    rdfgraphisomorphism \
      ~{fileFile1} \
      ~{true="--stdin" false="" stdinStdin} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{fileFileN}
  >>>
}