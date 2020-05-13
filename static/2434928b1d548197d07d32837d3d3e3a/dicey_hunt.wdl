version 1.0

task DiceyHunt {
  input {
    Boolean gG
    Boolean oO
    Boolean mM
    Boolean xX
    Boolean dD
    Boolean nN
    Boolean fF
    String? optionsOptions
    String? cattCattActaACatCaGt
  }
  command <<<
    dicey hunt \
      ~{optionsOptions} \
      ~{true="-g" false="" gG} \
      ~{true="-o" false="" oO} \
      ~{true="-m" false="" mM} \
      ~{true="-x" false="" xX} \
      ~{true="-d" false="" dD} \
      ~{true="-n" false="" nN} \
      ~{true="-f" false="" fF} \
      ~{cattCattActaACatCaGt}
  >>>
}