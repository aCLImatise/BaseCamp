version 1.0

task FfindexModify {
  input {
    File fF
    Boolean sS
    Boolean uU
    Boolean vV
  }
  command <<<
    ffindex_modify \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-u" false="" uU} \
      ~{true="-v" false="" vV}
  >>>
}