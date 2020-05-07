version 1.0

task SentieonBwaSampe {
  input {
    Int aA
    Int oO
    Int nN
    Int nN
    Float cC
    File fF
    String rR
    Boolean pP
    Boolean sS
    Boolean aA
    String? bwaBwa
    String? sampeSampe
    String? prefixPrefix
    String? in1saiIn1sai
    String? in2saiIn2sai
    String? in1fqIn1fq
    String? in2fqIn2fq
  }
  command <<<
    sentieon-bwa sampe \
      ~{bwaBwa} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-P" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="-A" false="" aA} \
      ~{sampeSampe} \
      ~{prefixPrefix} \
      ~{in1saiIn1sai} \
      ~{in2saiIn2sai} \
      ~{in1fqIn1fq} \
      ~{in2fqIn2fq}
  >>>
}