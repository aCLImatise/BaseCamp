version 1.0

task BpGccalc.pl {
  input {
    String fF
    File iI
    String? gccGccALcpl
  }
  command <<<
    bp_gccalc.pl \
      ~{gccGccALcpl} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""}
  >>>
}