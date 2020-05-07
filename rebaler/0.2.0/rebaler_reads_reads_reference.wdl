version 1.0

task RebalerReadsReadsReference {
  input {
    Boolean dD
    String tT
    Boolean randomRandom
    String? referenceReference
    String? readsReads
  }
  command <<<
    rebaler reads reads reference \
      ~{referenceReference} \
      ~{true="-d" false="" dD} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="--random" false="" randomRandom} \
      ~{readsReads}
  >>>
}