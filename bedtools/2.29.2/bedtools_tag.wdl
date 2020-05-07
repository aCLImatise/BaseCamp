version 1.0

task BedtoolsTag {
  input {
    Boolean intervalsIntervals
  }
  command <<<
    bedtools tag \
      ~{true="-intervals" false="" intervalsIntervals}
  >>>
}