version 1.0

task PgSAgen {
  input {
    String rR
    String kK
    Boolean cC
    Boolean pP
    Boolean vV
    String? readsReadsSrcfile
    String? pairPairSrcfile
    String? indexIndexPrefix
  }
  command <<<
    PgSAgen \
      ~{readsReadsSrcfile} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-p" false="" pP} \
      ~{true="-v" false="" vV} \
      ~{pairPairSrcfile} \
      ~{indexIndexPrefix}
  >>>
}