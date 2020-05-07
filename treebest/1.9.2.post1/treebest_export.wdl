version 1.0

task TreebestExport {
  input {
    String xX
    String yY
    String mM
    String fF
    String bB
    String wW
    File sS
    Boolean bB
    Boolean mM
    Boolean sS
    Boolean dD
    Boolean pP
    String? treeTree
  }
  command <<<
    treebest export \
      ~{treeTree} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-B" false="" bB} \
      ~{true="-M" false="" mM} \
      ~{true="-S" false="" sS} \
      ~{true="-d" false="" dD} \
      ~{true="-p" false="" pP}
  >>>
}