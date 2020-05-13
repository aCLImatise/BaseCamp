version 1.0

task Bed2pos.pl {
  input {
    Boolean checkCheck
    Boolean uniqueUnique
    File oO
    Boolean posPos
  }
  command <<<
    bed2pos.pl \
      ~{true="-check" false="" checkCheck} \
      ~{true="-unique" false="" uniqueUnique} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-pos" false="" posPos}
  >>>
}