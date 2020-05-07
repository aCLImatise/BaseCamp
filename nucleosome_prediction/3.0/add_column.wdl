version 1.0

task AddColumn.pl {
  input {
    Boolean bB
    String cC
    String nN
    String sS
    Boolean dD
    Boolean uU
    Boolean mM
    Boolean aA
    Boolean minMin
    Boolean maxMax
    Boolean countCount
    Boolean aveAve
    Boolean quantQuant
    String fF
    Int snSn
  }
  command <<<
    add_column.pl \
      ~{true="-b" false="" bB} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{true="-u" false="" uU} \
      ~{true="-m" false="" mM} \
      ~{true="-a" false="" aA} \
      ~{true="-min" false="" minMin} \
      ~{true="-max" false="" maxMax} \
      ~{true="-count" false="" countCount} \
      ~{true="-ave" false="" aveAve} \
      ~{true="-quant" false="" quantQuant} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(snSn) then ("-sn " +  '"' + snSn + '"') else ""}
  >>>
}