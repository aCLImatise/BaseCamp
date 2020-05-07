version 1.0

task Verse {
  input {
    Boolean vV
    Boolean zZ
  }
  command <<<
    verse \
      ~{true="-v" false="" vV} \
      ~{true="-Z" false="" zZ}
  >>>
}