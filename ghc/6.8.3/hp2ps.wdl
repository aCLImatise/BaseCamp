version 1.0

task Hp2ps {
  input {
    Boolean dD
    Boolean efEf
    Boolean gG
    Boolean iI
    Boolean mM
    String mnMn
    String m0M0
    Boolean pP
    Boolean sS
    String tfTf
    Boolean yY
    Boolean cC
  }
  command <<<
    hp2ps \
      ~{true="-d" false="" dD} \
      ~{true="-ef" false="" efEf} \
      ~{true="-g" false="" gG} \
      ~{true="-i" false="" iI} \
      ~{true="-M" false="" mM} \
      ~{if defined(mnMn) then ("-mn " +  '"' + mnMn + '"') else ""} \
      ~{if defined(m0M0) then ("-m0 " +  '"' + m0M0 + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{if defined(tfTf) then ("-tf " +  '"' + tfTf + '"') else ""} \
      ~{true="-y" false="" yY} \
      ~{true="-c" false="" cC}
  >>>
}