version 1.0

task TagBam {
  input {
    Boolean intervalsIntervals
  }
  command <<<
    tagBam \
      ~{true="-intervals" false="" intervalsIntervals}
  >>>
}