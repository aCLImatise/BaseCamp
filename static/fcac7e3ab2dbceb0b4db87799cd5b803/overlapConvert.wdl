version 1.0

task OverlapConvert {
  input {
    Boolean? needed_coords_default
    Boolean? coords
    Boolean? hangs
    Boolean? unaligned
    File file_do_to_vb
  }
  command <<<
    overlapConvert \
      ~{file_do_to_vb} \
      ~{true="-S" false="" needed_coords_default} \
      ~{true="-coords" false="" coords} \
      ~{true="-hangs" false="" hangs} \
      ~{true="-unaligned" false="" unaligned}
  >>>
  parameter_meta {
    needed_coords_default: "seqStore (needed for -coords, the default)"
    coords: "output coordiantes on reads"
    hangs: "output hangs on reads"
    unaligned: "output unaligned regions on each read"
    file_do_to_vb: ""
  }
}