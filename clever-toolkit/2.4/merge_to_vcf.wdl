version 1.0

task MergeToVcf {
  input {
    Boolean oO
    Boolean zZ
    Boolean oO
    Boolean zZ
    Boolean lL
    String iISizeMean
    String iISizeStddev
    Boolean wW
    Boolean gG
    Boolean tT
    Boolean dD
    Boolean bB
    Boolean mM
    Boolean pP
    Boolean iI
    Boolean sS
  }
  command <<<
    merge-to-vcf \
      ~{true="-o" false="" oO} \
      ~{true="-z" false="" zZ} \
      ~{true="-O" false="" oO} \
      ~{true="-Z" false="" zZ} \
      ~{true="-l" false="" lL} \
      ~{if defined(iISizeMean) then ("--isize_mean " +  '"' + iISizeMean + '"') else ""} \
      ~{if defined(iISizeStddev) then ("--isize_stddev " +  '"' + iISizeStddev + '"') else ""} \
      ~{true="-w" false="" wW} \
      ~{true="-G" false="" gG} \
      ~{true="-T" false="" tT} \
      ~{true="-d" false="" dD} \
      ~{true="-b" false="" bB} \
      ~{true="-m" false="" mM} \
      ~{true="-p" false="" pP} \
      ~{true="-I" false="" iI} \
      ~{true="-S" false="" sS}
  >>>
}