version 1.0

task ProphexKlcp {
  input {
    Int kK
    Boolean sS
    Boolean iI
    String? idxIdxBase
  }
  command <<<
    prophex klcp \
      ~{idxIdxBase} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-i" false="" iI}
  >>>
}