version 1.0

task ConvertSFSCODE {
  input {
    Boolean mkMk
    Boolean sfsSfs
  }
  command <<<
    convertSFS_CODE \
      ~{true="--MK" false="" mkMk} \
      ~{true="--SFS" false="" sfsSfs}
  >>>
}