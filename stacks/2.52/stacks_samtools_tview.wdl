version 1.0

task StacksSamtoolsTview {
  input {
    String pP
    String cC
    String sS
  }
  command <<<
    stacks-samtools-tview \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}