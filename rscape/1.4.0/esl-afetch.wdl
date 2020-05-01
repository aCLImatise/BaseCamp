version 1.0

task EslAfetch {
  input {
    Boolean fF
    String oO
    Boolean oO
    String inInFormat
    String outOutFormat
    Boolean indexIndex
  }
  command <<<
    esl-afetch \
      ~{true="-f" false="" fF} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-O" false="" oO} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(outOutFormat) then ("--outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{true="--index" false="" indexIndex}
  >>>
}