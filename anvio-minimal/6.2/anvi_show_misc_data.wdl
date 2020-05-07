version 1.0

task AnviShowMiscData {
  input {
    String pP
    String tT
    String dD
  }
  command <<<
    anvi-show-misc-data \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""}
  >>>
}