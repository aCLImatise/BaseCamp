version 1.0

task EvaluateBlastResults.pl {
  input {
    Boolean diffsDiffsCaf
    Boolean miniMiniDt
    String? aplApl
    String? blastBlastOut
    String? rasRasCafCsOut
    String? 00
  }
  command <<<
    EvaluateBlastResults.pl \
      ~{aplApl} \
      ~{true="-diffScaf" false="" diffsDiffsCaf} \
      ~{true="-minIdt" false="" miniMiniDt} \
      ~{blastBlastOut} \
      ~{rasRasCafCsOut} \
      ~{00}
  >>>
}