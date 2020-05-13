version 1.0

task TreebestMmerge {
  input {
    Boolean rR
    File sS
  }
  command <<<
    treebest mmerge \
      ~{true="-r" false="" rR} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}