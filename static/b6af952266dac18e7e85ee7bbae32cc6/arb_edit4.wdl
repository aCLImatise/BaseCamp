version 1.0

task ArbEdit4 {
  input {
    String cC
  }
  command <<<
    arb_edit4 \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""}
  >>>
}