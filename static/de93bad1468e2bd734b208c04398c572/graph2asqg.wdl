version 1.0

task Graph2asqg {
  input {
    String bB
    String rR
    String lL
    Boolean nN
  }
  command <<<
    graph2asqg \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-n" false="" nN}
  >>>
}