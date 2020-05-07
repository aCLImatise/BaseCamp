version 1.0

task SsuEslAfetch {
  input {
    Boolean fF
    String oO
    Boolean oO
    String inInFormat
    Boolean indexIndex
  }
  command <<<
    ssu-esl-afetch \
      ~{true="-f" false="" fF} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-O" false="" oO} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--index" false="" indexIndex}
  >>>
}