version 1.0

task GetOverlap {
  input {
    Boolean iI
    Boolean colsCols
  }
  command <<<
    getOverlap \
      ~{true="-i" false="" iI} \
      ~{true="-cols" false="" colsCols}
  >>>
}