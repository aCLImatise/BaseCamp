version 1.0

task MssprottableAddisoquant {
  input {
    String iI
    String dD
    String oO
    String quantQuantFile
    String qQAccPattern
    String isIsObQuantColPattern
  }
  command <<<
    mssprottable addisoquant \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(quantQuantFile) then ("--quantfile " +  '"' + quantQuantFile + '"') else ""} \
      ~{if defined(qQAccPattern) then ("--qaccpattern " +  '"' + qQAccPattern + '"') else ""} \
      ~{if defined(isIsObQuantColPattern) then ("--isobquantcolpattern " +  '"' + isIsObQuantColPattern + '"') else ""}
  >>>
}