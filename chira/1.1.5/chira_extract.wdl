version 1.0

task ChiraExtract.py {
  input {
    Boolean lL
    Boolean oO
    Boolean gG
    Boolean pP
    Boolean tcTc
    Boolean scSc
    Boolean coCo
    Boolean hybridizeHybridize
    Boolean f1F1
    Boolean f2F2
    Boolean fF
  }
  command <<<
    chira_extract.py \
      ~{true="-l" false="" lL} \
      ~{true="-o" false="" oO} \
      ~{true="-g" false="" gG} \
      ~{true="-p" false="" pP} \
      ~{true="-tc" false="" tcTc} \
      ~{true="-sc" false="" scSc} \
      ~{true="-co" false="" coCo} \
      ~{true="--hybridize" false="" hybridizeHybridize} \
      ~{true="-f1" false="" f1F1} \
      ~{true="-f2" false="" f2F2} \
      ~{true="-f" false="" fF}
  >>>
}