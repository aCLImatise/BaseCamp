version 1.0

task Dcml2pnm {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean fF
    Boolean tT
    Boolean tdTd
    Boolean teTe
    Boolean tbTb
    Boolean tiTi
    Boolean mfMf
    Boolean imIm
    Boolean oO
    String? dcmDcmFileIn
    String? bitmapBitmapOut
  }
  command <<<
    dcml2pnm \
      ~{dcmDcmFileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT} \
      ~{true="-td" false="" tdTd} \
      ~{true="-te" false="" teTe} \
      ~{true="-tb" false="" tbTb} \
      ~{true="-ti" false="" tiTi} \
      ~{true="-mf" false="" mfMf} \
      ~{true="-im" false="" imIm} \
      ~{true="-o" false="" oO} \
      ~{bitmapBitmapOut}
  >>>
}