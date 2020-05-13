version 1.0

task Grep.pyIdsOut {
  input {
    Boolean vV
    String sS
    String fF
    Boolean qQ
    String? targetTarget
    String? outOut
  }
  command <<<
    grep.py ids out \
      ~{targetTarget} \
      ~{true="-v" false="" vV} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{outOut}
  >>>
}