version 1.0

task GetRepeatCoords.pl {
  input {
    Int iI
    Int lL
    String oO
    String sS
  }
  command <<<
    get_repeat_coords.pl \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}