version 1.0

task OTreatHomopolymerRegions {
  input {
    String inputInputAlignment
    String outputOutputFastA
    String logLog
  }
  command <<<
    o-treat-homopolymer-regions \
      ~{if defined(inputInputAlignment) then ("--input-alignment " +  '"' + inputInputAlignment + '"') else ""} \
      ~{if defined(outputOutputFastA) then ("--output-fasta " +  '"' + outputOutputFastA + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""}
  >>>
}