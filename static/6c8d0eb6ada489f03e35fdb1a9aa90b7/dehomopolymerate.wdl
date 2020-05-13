version 1.0

task Dehomopolymerate {
  input {
    Boolean vV
    Boolean qQ
    Boolean fF
    Boolean wW
    String lL
  }
  command <<<
    dehomopolymerate \
      ~{true="-v" false="" vV} \
      ~{true="-q" false="" qQ} \
      ~{true="-f" false="" fF} \
      ~{true="-w" false="" wW} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}