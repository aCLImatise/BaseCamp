version 1.0

task OverlapConvert {
  input {
    Boolean sS
    Boolean coordsCoords
    Boolean hangsHangs
    Boolean unalignedUnaligned
  }
  command <<<
    overlapConvert \
      ~{true="-S" false="" sS} \
      ~{true="-coords" false="" coordsCoords} \
      ~{true="-hangs" false="" hangsHangs} \
      ~{true="-unaligned" false="" unalignedUnaligned}
  >>>
}