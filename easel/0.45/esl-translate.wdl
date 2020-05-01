version 1.0

task EslTranslate {
  input {
    String cC
    String lL
    Boolean mM
    Boolean mM
    Boolean wW
    String inInFormat
    Boolean watsonWatson
    Boolean crickCrick
  }
  command <<<
    esl-translate \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="-M" false="" mM} \
      ~{true="-W" false="" wW} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--watson" false="" watsonWatson} \
      ~{true="--crick" false="" crickCrick}
  >>>
}