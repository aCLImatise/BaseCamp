version 1.0

task BpNrdb.pl {
  input {
    File oO
    File aA
    Boolean lL
    Boolean iI
    Boolean nN
    Boolean dD
    Boolean pP
  }
  command <<<
    bp_nrdb.pl \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="-i" false="" iI} \
      ~{true="-n" false="" nN} \
      ~{true="-d" false="" dD} \
      ~{true="-p" false="" pP}
  >>>
}