version 1.0

task ProcessRepeats {
  input {
    Boolean aceAce
    Boolean gffGff
    Boolean polyPoly
    Boolean noNoId
    Boolean exclExclN
    Boolean orf2Orf2
    Boolean aA
    String maskMaskSource
    Boolean xX
    Boolean xsmallXsmall
  }
  command <<<
    ProcessRepeats \
      ~{true="-ace" false="" aceAce} \
      ~{true="-gff" false="" gffGff} \
      ~{true="-poly" false="" polyPoly} \
      ~{true="-no_id" false="" noNoId} \
      ~{true="-excln" false="" exclExclN} \
      ~{true="-orf2" false="" orf2Orf2} \
      ~{true="-a" false="" aA} \
      ~{if defined(maskMaskSource) then ("-maskSource " +  '"' + maskMaskSource + '"') else ""} \
      ~{true="-x" false="" xX} \
      ~{true="-xsmall" false="" xsmallXsmall}
  >>>
}