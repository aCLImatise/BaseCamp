version 1.0

task Bank2sam {
  input {
    String bB
    Boolean cC
    Boolean sS
    Boolean iI
  }
  command <<<
    bank2sam \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-s" false="" sS} \
      ~{true="-i" false="" iI}
  >>>
}