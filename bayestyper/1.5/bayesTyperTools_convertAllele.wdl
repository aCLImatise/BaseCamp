version 1.0

task BayesTyperToolsConvertAllele {
  input {
    Boolean vV
    Boolean gG
    Boolean oO
    Boolean zZ
    String altAltFile
    String meiMeiFile
    Boolean keepKeepImprecise
    Boolean keepKeepPartial
  }
  command <<<
    bayesTyperTools convertAllele \
      ~{true="-v" false="" vV} \
      ~{true="-g" false="" gG} \
      ~{true="-o" false="" oO} \
      ~{true="-z" false="" zZ} \
      ~{if defined(altAltFile) then ("--alt-file " +  '"' + altAltFile + '"') else ""} \
      ~{if defined(meiMeiFile) then ("--mei-file " +  '"' + meiMeiFile + '"') else ""} \
      ~{true="--keep-imprecise" false="" keepKeepImprecise} \
      ~{true="--keep-partial" false="" keepKeepPartial}
  >>>
}