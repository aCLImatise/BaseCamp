version 1.0

task RebalerReadsReferenceReads {
  input {
    Boolean dD
    String tT
    Boolean randomRandom
    String? referenceReference
    String? readsReads
  }
  command <<<
    rebaler reads reference reads \
      ~{referenceReference} \
      ~{true="-d" false="" dD} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="--random" false="" randomRandom} \
      ~{readsReads}
  >>>
}