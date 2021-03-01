version 1.0

task OverlapConvert {
  input {
    Boolean? seqstore_needed_default
    Boolean? coords
    Boolean? hangs
    Boolean? unaligned
    File file_do_to_vb
  }
  command <<<
    overlapConvert \
      ~{file_do_to_vb} \
      ~{if (seqstore_needed_default) then "-S" else ""} \
      ~{if (coords) then "-coords" else ""} \
      ~{if (hangs) then "-hangs" else ""} \
      ~{if (unaligned) then "-unaligned" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seqstore_needed_default: "seqStore (needed for -coords, the default)"
    coords: "output coordiantes on reads"
    hangs: "output hangs on reads"
    unaligned: "output unaligned regions on each read"
    file_do_to_vb: ""
  }
  output {
    File out_stdout = stdout()
  }
}