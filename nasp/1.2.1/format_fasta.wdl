version 1.0

task FormatFasta {
  input {
    String inputInputFastA
    String outputOutputFastA
  }
  command <<<
    format_fasta \
      ~{if defined(inputInputFastA) then ("--inputfasta " +  '"' + inputInputFastA + '"') else ""} \
      ~{if defined(outputOutputFastA) then ("--outputfasta " +  '"' + outputOutputFastA + '"') else ""}
  >>>
}