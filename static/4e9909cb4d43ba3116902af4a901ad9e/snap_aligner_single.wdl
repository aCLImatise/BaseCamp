version 1.0

task SnapAlignerSingle {
  input {
    Boolean lpLp
    Boolean nuNu
    Boolean noNo
    Boolean ntNt
    Boolean wbsWbs
  }
  command <<<
    snap-aligner single \
      ~{true="-lp" false="" lpLp} \
      ~{true="-nu" false="" nuNu} \
      ~{true="-no" false="" noNo} \
      ~{true="-nt" false="" ntNt} \
      ~{true="-wbs" false="" wbsWbs}
  >>>
}