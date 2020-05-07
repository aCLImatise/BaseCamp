version 1.0

task CgmlstDists {
  input {
    Boolean vV
    Boolean qQ
    Boolean cC
    String mM
  }
  command <<<
    cgmlst-dists \
      ~{true="-v" false="" vV} \
      ~{true="-q" false="" qQ} \
      ~{true="-c" false="" cC} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""}
  >>>
}