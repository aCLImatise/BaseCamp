version 1.0

task SamsiftNormSam {
  input {
    File iI
    File oO
    Boolean tT
    Boolean hH
  }
  command <<<
    samsift-norm-sam \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-T" false="" tT} \
      ~{true="-H" false="" hH}
  >>>
}