version 1.0

task GetHomerQCstats.pl {
  input {
    String kK
    String dD
    String chrChr
    String samSam
  }
  command <<<
    getHomerQCstats.pl \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(chrChr) then ("-chr " +  '"' + chrChr + '"') else ""} \
      ~{if defined(samSam) then ("-sam " +  '"' + samSam + '"') else ""}
  >>>
}