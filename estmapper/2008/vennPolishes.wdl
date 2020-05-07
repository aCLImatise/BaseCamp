version 1.0

task VennPolishes {
  input {
    String nN
    Int iI
    Int cC
    String dD
    Boolean plotPlot
  }
  command <<<
    vennPolishes \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-plot" false="" plotPlot}
  >>>
}