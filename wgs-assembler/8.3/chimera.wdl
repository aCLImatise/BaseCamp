version 1.0

task Chimera {
  input {
    String eE
    String eE
    String minMinInNiePair
    String minMinOverhanging
    Boolean useUseMates
    String oO
    Boolean nN
    String tT
    Boolean subSubReadLog
  }
  command <<<
    chimera \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(minMinInNiePair) then ("-mininniepair " +  '"' + minMinInNiePair + '"') else ""} \
      ~{if defined(minMinOverhanging) then ("-minoverhanging " +  '"' + minMinOverhanging + '"') else ""} \
      ~{true="-usemates" false="" useUseMates} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-subreadlog" false="" subSubReadLog}
  >>>
}