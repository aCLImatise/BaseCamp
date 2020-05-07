version 1.0

task RebalerReadsReferenceReference {
  input {
    Boolean dD
    String tT
    Boolean randomRandom
    String? referenceReference
    String? readsReads
  }
  command <<<
    rebaler reads reference reference \
      ~{referenceReference} \
      ~{true="-d" false="" dD} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="--random" false="" randomRandom} \
      ~{readsReads}
  >>>
}