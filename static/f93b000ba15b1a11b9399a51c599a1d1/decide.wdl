version 1.0

task Decide.bak {
  input {
    Boolean diploidDiploid
    Boolean firstFirstPass
    String tT
    String? decideDecide
    String? histogramsHistogramsPrefix
  }
  command <<<
    decide.bak \
      ~{decideDecide} \
      ~{true="--diploid" false="" diploidDiploid} \
      ~{true="--first_pass" false="" firstFirstPass} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{histogramsHistogramsPrefix}
  >>>
}