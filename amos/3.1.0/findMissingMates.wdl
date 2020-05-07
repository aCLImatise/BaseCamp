version 1.0

task FindMissingMates {
  input {
    Boolean sS
    Boolean vV
    Boolean sS
    Boolean mM
    Boolean mM
    String eE
    String iI
    String xX
    String yY
    String? findFindMissingMates
  }
  command <<<
    findMissingMates \
      ~{findFindMissingMates} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV} \
      ~{true="-S" false="" sS} \
      ~{true="-M" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""}
  >>>
}