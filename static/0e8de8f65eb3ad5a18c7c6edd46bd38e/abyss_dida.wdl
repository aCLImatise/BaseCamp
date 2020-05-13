version 1.0

task AbyssDida {
  input {
    String dD
    Boolean jJ
    Boolean mM
    Boolean nN
    String xX
  }
  command <<<
    abyss-dida \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-j" false="" jJ} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""}
  >>>
}