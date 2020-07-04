version 1.0

task Dd {
  input {
    String ascii
    String ebcdic
    String ibm
    String block
    String unblock
    String l_case
    String u_case
    String sparse
    String swab
    String sync
    String excl
    String no_creat
    String not_run_c
    String no_error
    String f_data_sync
    String fsync
    String count_bytes
    String skip_bytes
    String seek_bytes
  }
  command <<<
    dd \
      ~{ascii} \
      ~{ebcdic} \
      ~{ibm} \
      ~{block} \
      ~{unblock} \
      ~{l_case} \
      ~{u_case} \
      ~{sparse} \
      ~{swab} \
      ~{sync} \
      ~{excl} \
      ~{no_creat} \
      ~{not_run_c} \
      ~{no_error} \
      ~{f_data_sync} \
      ~{fsync} \
      ~{count_bytes} \
      ~{skip_bytes} \
      ~{seek_bytes}
  >>>
  parameter_meta {
    ascii: "from EBCDIC to ASCII"
    ebcdic: "from ASCII to EBCDIC"
    ibm: "from ASCII to alternate EBCDIC"
    block: "pad newline-terminated records with spaces to cbs-size"
    unblock: "replace trailing spaces in cbs-size records with newline"
    l_case: "change upper case to lower case"
    u_case: "change lower case to upper case"
    sparse: "try to seek rather than write the output for NUL input blocks"
    swab: "swap every pair of input bytes"
    sync: "pad every input block with NULs to ibs-size; when used with block or unblock, pad with spaces rather than NULs"
    excl: "fail if the output file already exists"
    no_creat: "do not create the output file"
    not_run_c: "do not truncate the output file"
    no_error: "continue after read errors"
    f_data_sync: "physically write output file data before finishing"
    fsync: "likewise, but also write metadata"
    count_bytes: "treat 'count=N' as a byte count (iflag only)"
    skip_bytes: "treat 'skip=N' as a byte count (iflag only)"
    seek_bytes: "treat 'seek=N' as a byte count (oflag only)"
  }
}