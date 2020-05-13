version 1.0

task Pyrad {
  input {
    String pP
    String sS
    String dD
    Boolean nN
    Boolean dD
    String? pyraPyraD
  }
  command <<<
    pyrad \
      ~{pyraPyraD} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{true="-D" false="" dD}
  >>>
}