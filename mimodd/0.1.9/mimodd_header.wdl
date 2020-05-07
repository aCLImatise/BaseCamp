version 1.0

task MimoddHeader {
  input {
    String ofileOfile
    Boolean relaxedRelaxed
    Array[String]+ rgRgId
    Array[String]+ rgRgSm
    Array[String]+ rgRgCn
    Array[String]+ rgRgDs
    Array[String]+ rgRgDt
    Array[String]+ rgRgLb
    Array[String]+ rgRgPl
    Array[String]+ rgRgPi
    Array[String]+ rgRgPu
    Boolean coCo
  }
  command <<<
    mimodd header \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{true="--relaxed" false="" relaxedRelaxed} \
      ~{if defined(rgRgId) then ("--rg-id " +  '"' + rgRgId + '"') else ""} \
      ~{if defined(rgRgSm) then ("--rg-sm " +  '"' + rgRgSm + '"') else ""} \
      ~{if defined(rgRgCn) then ("--rg-cn " +  '"' + rgRgCn + '"') else ""} \
      ~{if defined(rgRgDs) then ("--rg-ds " +  '"' + rgRgDs + '"') else ""} \
      ~{if defined(rgRgDt) then ("--rg-dt " +  '"' + rgRgDt + '"') else ""} \
      ~{if defined(rgRgLb) then ("--rg-lb " +  '"' + rgRgLb + '"') else ""} \
      ~{if defined(rgRgPl) then ("--rg-pl " +  '"' + rgRgPl + '"') else ""} \
      ~{if defined(rgRgPi) then ("--rg-pi " +  '"' + rgRgPi + '"') else ""} \
      ~{if defined(rgRgPu) then ("--rg-pu " +  '"' + rgRgPu + '"') else ""} \
      ~{true="--co" false="" coCo}
  >>>
}