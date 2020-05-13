version 1.0

task BpSearch2gff.pl {
  input {
    String iI
    File oO
    String fF
    Boolean tT
    Boolean sS
    Boolean methodMethod
    Boolean scoreScoreFunc
    Boolean locLocFunc
    Boolean oneOneHsp
    Boolean pP
    Boolean targetTarget
    Boolean componentComponent
    Boolean mM
    Boolean addAddId
    Boolean cC
    String? argsArgs
  }
  command <<<
    bp_search2gff.pl \
      ~{argsArgs} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-t" false="" tT} \
      ~{true="-s" false="" sS} \
      ~{true="--method" false="" methodMethod} \
      ~{true="--scorefunc" false="" scoreScoreFunc} \
      ~{true="--locfunc" false="" locLocFunc} \
      ~{true="--onehsp" false="" oneOneHsp} \
      ~{true="-p" false="" pP} \
      ~{true="--target" false="" targetTarget} \
      ~{true="--component" false="" componentComponent} \
      ~{true="-m" false="" mM} \
      ~{true="--addid" false="" addAddId} \
      ~{true="-c" false="" cC}
  >>>
}