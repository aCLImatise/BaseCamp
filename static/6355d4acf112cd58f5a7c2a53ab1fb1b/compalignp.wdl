version 1.0

task Compalignp {
  input {
    Boolean vV
    Boolean dD
    String rR
    String tT
  }
  command <<<
    compalignp \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}