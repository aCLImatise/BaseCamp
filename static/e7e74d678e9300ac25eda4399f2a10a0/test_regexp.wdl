version 1.0

task TestRegexp {
  input {
    Boolean dD
    Boolean iI
    String oO
    Boolean pP
    Boolean sS
    Boolean tT
  }
  command <<<
    test_regexp \
      ~{true="-d" false="" dD} \
      ~{true="-i" false="" iI} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="-t" false="" tT}
  >>>
}