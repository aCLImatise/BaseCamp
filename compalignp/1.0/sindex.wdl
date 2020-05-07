version 1.0

task Sindex {
  input {
    String oO
    Boolean externalExternal
    String inInFormat
    Boolean pfamPfamSeq
  }
  command <<<
    sindex \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--external" false="" externalExternal} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--pfamseq" false="" pfamPfamSeq}
  >>>
}