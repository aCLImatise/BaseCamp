version 1.0

task CapCmain {
  input {
    Boolean rR
    Boolean tT
    Boolean sS
    Boolean oO
    String eE
    Boolean iI
  }
  command <<<
    capCmain \
      ~{true="-r" false="" rR} \
      ~{true="-t" false="" tT} \
      ~{true="-s" false="" sS} \
      ~{true="-o" false="" oO} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-i" false="" iI}
  >>>
}