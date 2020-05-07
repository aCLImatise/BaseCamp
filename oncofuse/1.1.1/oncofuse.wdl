version 1.0

task Oncofuse {
  input {
    String aA
    Int pP
  }
  command <<<
    oncofuse \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}