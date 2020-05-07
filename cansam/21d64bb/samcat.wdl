version 1.0

task Samcat {
  input {
    Boolean bB
    String fF
    Boolean nN
    File oO
    String oO
    Boolean vV
    String? bamBam
    String? hexHex
    String? textText
    String? ubUbAm
  }
  command <<<
    samcat \
      ~{bamBam} \
      ~{true="-b" false="" bB} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{hexHex} \
      ~{textText} \
      ~{ubUbAm}
  >>>
}