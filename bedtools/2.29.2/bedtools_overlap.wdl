version 1.0

task BedtoolsOverlap {
  input {
    Boolean iI
    Boolean colsCols
  }
  command <<<
    bedtools overlap \
      ~{true="-i" false="" iI} \
      ~{true="-cols" false="" colsCols}
  >>>
}