version 1.0

task ReadLinker {
  input {
    File oO
    String lL
    String eE
  }
  command <<<
    read-linker \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""}
  >>>
}