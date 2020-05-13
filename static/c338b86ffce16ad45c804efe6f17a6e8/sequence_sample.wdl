version 1.0

task SequenceSample {
  input {
    String basesBases
    String readsReads
    String pairsPairs
    String fractionFraction
  }
  command <<<
    sequence sample \
      ~{if defined(basesBases) then ("-bases " +  '"' + basesBases + '"') else ""} \
      ~{if defined(readsReads) then ("-reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(pairsPairs) then ("-pairs " +  '"' + pairsPairs + '"') else ""} \
      ~{if defined(fractionFraction) then ("-fraction " +  '"' + fractionFraction + '"') else ""}
  >>>
}