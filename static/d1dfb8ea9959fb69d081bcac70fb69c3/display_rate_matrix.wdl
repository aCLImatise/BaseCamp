version 1.0

task DisplayRateMatrix {
  input {
    String tT
    Boolean fF
    Boolean eE
    Boolean dD
    Boolean lL
    Boolean lL
    Boolean iI
    Boolean zZ
    Boolean sS
    Boolean eE
    Boolean aA
    Boolean sS
    String mM
    String nN
    String aA
    String bB
    Boolean cC
    String? optionsOptions
    String? modelModelFname
  }
  command <<<
    display_rate_matrix \
      ~{optionsOptions} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-e" false="" eE} \
      ~{true="-d" false="" dD} \
      ~{true="-L" false="" lL} \
      ~{true="-l" false="" lL} \
      ~{true="-i" false="" iI} \
      ~{true="-z" false="" zZ} \
      ~{true="-S" false="" sS} \
      ~{true="-E" false="" eE} \
      ~{true="-a" false="" aA} \
      ~{true="-s" false="" sS} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{true="-C" false="" cC} \
      ~{modelModelFname}
  >>>
}