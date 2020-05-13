version 1.0

task BuildRefContigs {
  input {
    Boolean minMinOverlap
    Boolean uU
    Boolean sS
  }
  command <<<
    buildRefContigs \
      ~{true="-minoverlap" false="" minMinOverlap} \
      ~{true="-U" false="" uU} \
      ~{true="-S" false="" sS}
  >>>
}