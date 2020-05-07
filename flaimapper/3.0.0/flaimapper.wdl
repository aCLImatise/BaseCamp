version 1.0

task Flaimapper {
  input {
    String parametersParameters
    String outputOutput
    Boolean fF
    String fastFastA
    String offsetOffset5p
    String offsetOffset3p
    String? alignmentAlignmentFile
  }
  command <<<
    flaimapper \
      ~{alignmentAlignmentFile} \
      ~{if defined(parametersParameters) then ("--parameters " +  '"' + parametersParameters + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(offsetOffset5p) then ("--offset5p " +  '"' + offsetOffset5p + '"') else ""} \
      ~{if defined(offsetOffset3p) then ("--offset3p " +  '"' + offsetOffset3p + '"') else ""}
  >>>
}