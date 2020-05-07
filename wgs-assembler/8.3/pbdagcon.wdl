version 1.0

task Pbdagcon {
  input {
    Boolean vV
    Boolean aA
    Boolean tT
    Boolean mM
    Boolean cC
    Boolean jJ
    Boolean rR
    Boolean wW
    String inputInput
    String? inputInput
  }
  command <<<
    pbdagcon \
      ~{inputInput} \
      ~{true="-v" false="" vV} \
      ~{true="-a" false="" aA} \
      ~{true="-t" false="" tT} \
      ~{true="-m" false="" mM} \
      ~{true="-c" false="" cC} \
      ~{true="-j" false="" jJ} \
      ~{true="-r" false="" rR} \
      ~{true="-w" false="" wW} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""}
  >>>
}