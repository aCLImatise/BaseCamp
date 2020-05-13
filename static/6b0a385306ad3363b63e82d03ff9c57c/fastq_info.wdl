version 1.0

task FastqInfo {
  input {
    Boolean sS
    Boolean eE
    Boolean qQ
    Boolean rR
  }
  command <<<
    fastq_info \
      ~{true="-s" false="" sS} \
      ~{true="-e" false="" eE} \
      ~{true="-q" false="" qQ} \
      ~{true="-r" false="" rR}
  >>>
}