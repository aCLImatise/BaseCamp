version 1.0

task HtsboxRazip {
  input {
    Boolean cC
    Boolean dD
    Boolean lL
    Int bB
    Int sS
  }
  command <<<
    htsbox razip \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-l" false="" lL} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}