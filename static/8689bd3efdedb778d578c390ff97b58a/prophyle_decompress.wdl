version 1.0

task ProphyleDecompress {
  input {
    Boolean kK
    Boolean cC
  }
  command <<<
    prophyle decompress \
      ~{true="-K" false="" kK} \
      ~{true="-c" false="" cC}
  >>>
}