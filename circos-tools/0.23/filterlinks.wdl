version 1.0

task Filterlinks {
  input {
    String linksLinks
    Boolean noNoInter
    Boolean noNoIntra
    Boolean debugDebug
  }
  command <<<
    filterlinks \
      ~{if defined(linksLinks) then ("-links " +  '"' + linksLinks + '"') else ""} \
      ~{true="-nointer" false="" noNoInter} \
      ~{true="-nointra" false="" noNoIntra} \
      ~{true="-debug" false="" debugDebug}
  >>>
}