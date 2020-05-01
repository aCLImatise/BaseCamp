version 1.0

task Fqtools {
  input {
    Boolean vV
    Boolean dD
    Boolean rR
    Boolean aA
    Boolean mM
    Boolean uU
    Boolean lL
    String pP
    String bB
    String bB
    String qQ
    String fF
    String fF
    Boolean iI
    Boolean iI
    String? uU
    String? sS
    String? oO
    String? iI
    String? fF
    String? fF
    String? bB
    String? sS
    String? uU
  }
  command <<<
    fqtools \
      ~{uU} \
      ~{fF} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-r" false="" rR} \
      ~{true="-a" false="" aA} \
      ~{true="-m" false="" mM} \
      ~{true="-u" false="" uU} \
      ~{true="-l" false="" lL} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-I" false="" iI} \
      ~{sS} \
      ~{fF} \
      ~{oO} \
      ~{bB} \
      ~{iI} \
      ~{sS} \
      ~{uU}
  >>>
}