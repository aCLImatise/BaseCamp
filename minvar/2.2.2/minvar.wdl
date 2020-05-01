version 1.0

task Minvar {
  input {
    String fF
    Boolean rR
    Boolean kK
    Boolean vV
  }
  command <<<
    minvar \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-k" false="" kK} \
      ~{true="-v" false="" vV}
  >>>
}