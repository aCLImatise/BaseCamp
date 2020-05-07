version 1.0

task Coloraln.pl {
  input {
    File sS
    String cC
    Boolean tT
    Boolean rR
    Boolean nN
    File? fileFileAln
  }
  command <<<
    coloraln.pl \
      ~{fileFileAln} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-t" false="" tT} \
      ~{true="-r" false="" rR} \
      ~{true="-n" false="" nN}
  >>>
}