version 1.0

task GfftoDIEGObed.pl {
  input {
    File gG
    File oO
    String wW
    String hH
  }
  command <<<
    gfftoDIEGObed.pl \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""}
  >>>
}