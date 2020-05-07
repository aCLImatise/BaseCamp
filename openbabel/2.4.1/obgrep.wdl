version 1.0

task Obgrep {
  input {
    Boolean vV
    Boolean cC
    String iI
    Boolean fF
    Boolean nN
    String tT
  }
  command <<<
    obgrep \
      ~{true="-v" false="" vV} \
      ~{true="-c" false="" cC} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-n" false="" nN} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}