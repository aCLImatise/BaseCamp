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
    String pad_input_block
    String excl
    String no_creat
    String not_run_c
    String no_error
    String f_data_sync
    String fsync
    String append
    String direct
    Directory directory
    String d_sync
    String likewise_also_metadata
    String full_block
    String non_block
    String noatime
    String nocache
    String noc_tty
    String nofollow
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
      ~{pad_input_block} \
      ~{excl} \
      ~{no_creat} \
      ~{not_run_c} \
      ~{no_error} \
      ~{f_data_sync} \
      ~{fsync} \
      ~{append} \
      ~{direct} \
      ~{directory} \
      ~{d_sync} \
      ~{likewise_also_metadata} \
      ~{full_block} \
      ~{non_block} \
      ~{noatime} \
      ~{nocache} \
      ~{noc_tty} \
      ~{nofollow} \
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
    pad_input_block: "pad every input block with NULs to ibs-size; when used\\nwith block or unblock, pad with spaces rather than NULs"
    excl: "fail if the output file already exists"
    no_creat: "do not create the output file"
    not_run_c: "do not truncate the output file"
    no_error: "continue after read errors"
    f_data_sync: "physically write output file data before finishing"
    fsync: "likewise, but also write metadata"
    append: "append mode (makes sense only for output; conv=notrunc suggested)"
    direct: "use direct I/O for data"
    directory: "fail unless a directory"
    d_sync: "use synchronized I/O for data"
    likewise_also_metadata: "likewise, but also for metadata"
    full_block: "accumulate full blocks of input (iflag only)"
    non_block: "use non-blocking I/O"
    noatime: "do not update access time"
    nocache: "Request to drop cache.  See also oflag=sync"
    noc_tty: "do not assign controlling terminal from file"
    nofollow: "do not follow symlinks"
    count_bytes: "treat 'count=N' as a byte count (iflag only)"
    skip_bytes: "treat 'skip=N' as a byte count (iflag only)"
    seek_bytes: "treat 'seek=N' as a byte count (oflag only)"
  }
  output {
    File out_stdout = stdout()
  }
}