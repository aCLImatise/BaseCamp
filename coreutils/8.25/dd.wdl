version 1.0

task Dd {
  input {
    String? asciiAscii
    String? ebcdicEbcdic
    String? ibmIbm
    String? blockBlock
    String? unblockUnblock
    String? lLCase
    String? uUCase
    String? sparseSparse
    String? swabSwab
    String? syncSync
    String? exclExcl
    String? noNoCreat
    String? notNotRunC
    String? noNoError
    String? fFDataSync
    String? fsyncFsync
    String? countCountBytes
    String? skipSkipBytes
    String? seekSeekBytes
  }
  command <<<
    dd \
      ~{asciiAscii} \
      ~{countCountBytes} \
      ~{ebcdicEbcdic} \
      ~{skipSkipBytes} \
      ~{ibmIbm} \
      ~{seekSeekBytes} \
      ~{blockBlock} \
      ~{unblockUnblock} \
      ~{lLCase} \
      ~{uUCase} \
      ~{sparseSparse} \
      ~{swabSwab} \
      ~{syncSync} \
      ~{exclExcl} \
      ~{noNoCreat} \
      ~{notNotRunC} \
      ~{noNoError} \
      ~{fFDataSync} \
      ~{fsyncFsync}
  >>>
}