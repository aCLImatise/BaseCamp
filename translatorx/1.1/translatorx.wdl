version 1.0

task Translatorx {
  input {
    Boolean iI
    Boolean oO
    Boolean aA
    Boolean pP
    Boolean cC
    Boolean jJ
    Boolean gG
    Boolean tT
  }
  command <<<
    translatorx \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-a" false="" aA} \
      ~{true="-p" false="" pP} \
      ~{true="-c" false="" cC} \
      ~{true="-j" false="" jJ} \
      ~{true="-g" false="" gG} \
      ~{true="-t" false="" tT}
  >>>
}