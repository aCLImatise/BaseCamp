version 1.0

task EvoFoldV2 {
  input {
    Boolean cC
    Boolean fF
    Boolean nN
    String decimalsDecimals
    Boolean oO
    String? evEvOfOld
    String? alAlGama
    String? treeTreeNeiwCk
  }
  command <<<
    EvoFoldV2 \
      ~{evEvOfOld} \
      ~{true="-c" false="" cC} \
      ~{true="-f" false="" fF} \
      ~{true="-n" false="" nN} \
      ~{if defined(decimalsDecimals) then ("--decimals " +  '"' + decimalsDecimals + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{alAlGama} \
      ~{treeTreeNeiwCk}
  >>>
}