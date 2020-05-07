version 1.0

task Mglobgrep {
  input {
    Boolean vV
    Boolean cC
    String iI
    Boolean fF
    Boolean nN
    String tT
  }
  command <<<
    mglobgrep \
      ~{true="-v" false="" vV} \
      ~{true="-c" false="" cC} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-n" false="" nN} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}