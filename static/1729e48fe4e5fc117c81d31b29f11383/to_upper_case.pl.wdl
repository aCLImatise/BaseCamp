version 1.0

task ToUpperCase.pl.bak {
  input {
    Boolean lL
    String cC
  }
  command <<<
    to_upper_case.pl.bak \
      ~{true="-l" false="" lL} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""}
  >>>
}