version 1.0

task FragScaff.sh {
  input {
    String tT
    String pP
    String aA
    Int cC
    String bB
  }
  command <<<
    fragScaff.sh \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""}
  >>>
}