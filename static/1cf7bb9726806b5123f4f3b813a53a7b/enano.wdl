version 1.0

task Enano {
  input {
    Boolean cC
    Int kK
    String lL
    String tT
    String tT
  }
  command <<<
    enano \
      ~{true="-c" false="" cC} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}