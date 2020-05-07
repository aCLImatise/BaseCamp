version 1.0

task Parsecasm {
  input {
    Boolean noNoFastA
    Boolean justJustFastA
    String oO
    Boolean noNoNames
  }
  command <<<
    parsecasm \
      ~{true="-nofasta" false="" noNoFastA} \
      ~{true="-justfasta" false="" justJustFastA} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-nonames" false="" noNoNames}
  >>>
}