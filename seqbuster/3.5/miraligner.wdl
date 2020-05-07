version 1.0

task Miraligner {
  input {
    Boolean addAdd
    Boolean dbDb
    Boolean debugDebug
    Boolean formatFormat
    Boolean freqFreq
    Boolean iI
    Boolean minMinL
    Boolean oO
    Boolean prePre
    Boolean sS
    Boolean subSub
    Boolean trimTrim
    Boolean vV
  }
  command <<<
    miraligner \
      ~{true="-add" false="" addAdd} \
      ~{true="-db" false="" dbDb} \
      ~{true="-debug" false="" debugDebug} \
      ~{true="-format" false="" formatFormat} \
      ~{true="-freq" false="" freqFreq} \
      ~{true="-i" false="" iI} \
      ~{true="-minl" false="" minMinL} \
      ~{true="-o" false="" oO} \
      ~{true="-pre" false="" prePre} \
      ~{true="-s" false="" sS} \
      ~{true="-sub" false="" subSub} \
      ~{true="-trim" false="" trimTrim} \
      ~{true="-v" false="" vV}
  >>>
}