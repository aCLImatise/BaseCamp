version 1.0

task FilterIntronsFindStrand.pl {
  input {
    String allowedAllowed
    Boolean scoreScore
    String genomeGenome
    Int intronsIntrons
  }
  command <<<
    filterIntronsFindStrand.pl \
      ~{if defined(allowedAllowed) then ("--allowed " +  '"' + allowedAllowed + '"') else ""} \
      ~{true="--score" false="" scoreScore} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(intronsIntrons) then ("--introns " +  '"' + intronsIntrons + '"') else ""}
  >>>
}