version 1.0

task ByobuUgraph {
  input {
    File fF
    String mM
    Boolean nN
    String pP
    Boolean rR
    String tT
    String xX
    String? commandCommand
    String? argsArgs
  }
  command <<<
    byobu-ugraph \
      ~{commandCommand} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{argsArgs}
  >>>
}