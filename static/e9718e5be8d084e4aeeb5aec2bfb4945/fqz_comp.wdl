version 1.0

task FqzComp {
  input {
    String qQ
    String sS
    Boolean bB
    Boolean eE
    String qQ
    String nN
    Boolean pP
    Boolean xX
    Boolean sS
  }
  command <<<
    fqz_comp \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{true="-e" false="" eE} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-P" false="" pP} \
      ~{true="-X" false="" xX} \
      ~{true="-S" false="" sS}
  >>>
}