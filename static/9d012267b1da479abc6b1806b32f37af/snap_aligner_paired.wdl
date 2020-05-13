version 1.0

task SnapAlignerPaired {
  input {
    Boolean lpLp
    Boolean nuNu
    Boolean noNo
    Boolean ntNt
    Boolean wbsWbs
    String fF
    Boolean kuKu
  }
  command <<<
    snap-aligner paired \
      ~{true="-lp" false="" lpLp} \
      ~{true="-nu" false="" nuNu} \
      ~{true="-no" false="" noNo} \
      ~{true="-nt" false="" ntNt} \
      ~{true="-wbs" false="" wbsWbs} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{true="-ku" false="" kuKu}
  >>>
}