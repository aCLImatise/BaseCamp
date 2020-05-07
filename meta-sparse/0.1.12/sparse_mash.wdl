version 1.0

task SparseMash {
  input {
    String nN
    String qQ
    Boolean readRead
  }
  command <<<
    sparse mash \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{true="--read" false="" readRead}
  >>>
}