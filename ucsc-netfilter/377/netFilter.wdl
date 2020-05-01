version 1.0

task NetFilter {
  input {
    String minMinSynSize
    String minMinSynAli
    String maxMaxFar
    Boolean nonNonSyn
    Boolean chimpsChimpsYn
    String onlyOnly
    String onlyOnly
    String lineLine
    Boolean noNoRandom
    Boolean noNoHap
  }
  command <<<
    netFilter \
      ~{if defined(minMinSynSize) then ("-minSynSize " +  '"' + minMinSynSize + '"') else ""} \
      ~{if defined(minMinSynAli) then ("-minSynAli " +  '"' + minMinSynAli + '"') else ""} \
      ~{if defined(maxMaxFar) then ("-maxFar " +  '"' + maxMaxFar + '"') else ""} \
      ~{true="-nonsyn" false="" nonNonSyn} \
      ~{true="-chimpSyn" false="" chimpsChimpsYn} \
      ~{if defined(onlyOnly) then ("- Only " +  '"' + onlyOnly + '"') else ""} \
      ~{if defined(onlyOnly) then ("- Only " +  '"' + onlyOnly + '"') else ""} \
      ~{if defined(lineLine) then ("-line " +  '"' + lineLine + '"') else ""} \
      ~{true="-noRandom" false="" noNoRandom} \
      ~{true="-noHap" false="" noNoHap}
  >>>
}