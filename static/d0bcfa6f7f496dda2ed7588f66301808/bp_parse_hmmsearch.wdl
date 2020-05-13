version 1.0

task BpParseHmmsearch.pl {
  input {
    Boolean sS
    Boolean mM
    Boolean poPo
    Boolean psPs
  }
  command <<<
    bp_parse_hmmsearch.pl \
      ~{true="-s" false="" sS} \
      ~{true="-m" false="" mM} \
      ~{true="--po" false="" poPo} \
      ~{true="--ps" false="" psPs}
  >>>
}