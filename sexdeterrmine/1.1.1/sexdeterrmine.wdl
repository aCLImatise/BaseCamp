version 1.0

task Sexdeterrmine {
  input {
    String iI
    String fF
    Boolean vV
  }
  command <<<
    sexdeterrmine \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}