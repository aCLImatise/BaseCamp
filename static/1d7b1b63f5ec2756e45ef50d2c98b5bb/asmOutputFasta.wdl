version 1.0

task AsmOutputFasta {
  input {
    Boolean pP
    Boolean uU
    Boolean dD
    Boolean cC
    Boolean sS
    String nN
  }
  command <<<
    asmOutputFasta \
      ~{true="-p" false="" pP} \
      ~{true="-U" false="" uU} \
      ~{true="-D" false="" dD} \
      ~{true="-C" false="" cC} \
      ~{true="-S" false="" sS} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""}
  >>>
}