version 1.0

task CdHitPara.pl {
  input {
    String tT
    String rR
    String hH
  }
  command <<<
    cd-hit-para.pl \
      ~{if defined(tT) then ("--T " +  '"' + tT + '"') else ""} \
      ~{if defined(rR) then ("--R " +  '"' + rR + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""}
  >>>
}