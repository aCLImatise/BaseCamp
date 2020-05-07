version 1.0

task ProphexIndex {
  input {
    Int kK
    Boolean sS
    Boolean iI
    String? idxIdxBase
  }
  command <<<
    prophex index \
      ~{idxIdxBase} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-i" false="" iI}
  >>>
}