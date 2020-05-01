version 1.0

task CombineGO.pl {
  input {
    File fF
    Directory dD
    Boolean topTop
    Boolean columnColumn
    Boolean ratioRatio
  }
  command <<<
    combineGO.pl \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-top" false="" topTop} \
      ~{true="-column" false="" columnColumn} \
      ~{true="-ratio" false="" ratioRatio}
  >>>
}