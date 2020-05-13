version 1.0

task ToUpperCase.pl {
  input {
    Boolean lL
    String cC
  }
  command <<<
    to_upper_case.pl \
      ~{true="-l" false="" lL} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""}
  >>>
}