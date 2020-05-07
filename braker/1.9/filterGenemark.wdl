version 1.0

task FilterGenemark.pl {
  input {
    Int intronsIntrons
    String genemarkGenemark
    String outputOutput
    Boolean suppressSuppress
    Boolean filterFilterOutShort
  }
  command <<<
    filterGenemark.pl \
      ~{if defined(intronsIntrons) then ("--introns " +  '"' + intronsIntrons + '"') else ""} \
      ~{if defined(genemarkGenemark) then ("--genemark " +  '"' + genemarkGenemark + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--suppress" false="" suppressSuppress} \
      ~{true="--filterOutShort" false="" filterFilterOutShort}
  >>>
}