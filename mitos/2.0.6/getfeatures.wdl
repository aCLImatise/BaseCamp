version 1.0

task Getfeatures.py {
  input {
    Boolean linearLinear
    String pP
    String pP
    String nN
    String nN
    String tT
    String tT
    String oO
    Boolean gffGff
    String fF
    Boolean maxMax
  }
  command <<<
    getfeatures.py \
      ~{true="--linear" false="" linearLinear} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--gff" false="" gffGff} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="--max" false="" maxMax}
  >>>
}