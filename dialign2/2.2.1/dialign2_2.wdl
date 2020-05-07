version 1.0

task Dialign22 {
  input {
    Boolean nN
    Boolean ntNt
    Boolean lgsLgs
  }
  command <<<
    dialign2-2 \
      ~{true="-n" false="" nN} \
      ~{true="-nt" false="" ntNt} \
      ~{true="-lgs" false="" lgsLgs}
  >>>
}