version 1.0

task Bstats {
  input {
    Boolean vV
    Int iI
    File dD
  }
  command <<<
    bstats \
      ~{true="-v" false="" vV} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""}
  >>>
}