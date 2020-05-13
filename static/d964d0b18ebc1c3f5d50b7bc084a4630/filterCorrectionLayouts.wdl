version 1.0

task FilterCorrectionLayouts {
  input {
    String sS
    String cC
    String rR
    Boolean ccCc
    Boolean clCl
    Boolean gG
    Boolean cC
    Boolean rescueRescue
  }
  command <<<
    filterCorrectionLayouts \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{true="-cc" false="" ccCc} \
      ~{true="-cl" false="" clCl} \
      ~{true="-g" false="" gG} \
      ~{true="-c" false="" cC} \
      ~{true="-rescue" false="" rescueRescue}
  >>>
}