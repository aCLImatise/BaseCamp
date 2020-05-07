version 1.0

task Snap {
  input {
    Boolean lcLcMask
    Boolean plusPlus
    Boolean minusMinus
    Boolean gffGff
    Boolean aceAce
    Boolean quietQuiet
    File aaAa
    File txTx
    File xdefXdef
    String nameName
    String? hmmHmmFile
    String? fastFastAFile
  }
  command <<<
    snap \
      ~{hmmHmmFile} \
      ~{true="-lcmask" false="" lcLcMask} \
      ~{true="-plus" false="" plusPlus} \
      ~{true="-minus" false="" minusMinus} \
      ~{true="-gff" false="" gffGff} \
      ~{true="-ace" false="" aceAce} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{if defined(aaAa) then ("-aa " +  '"' + aaAa + '"') else ""} \
      ~{if defined(txTx) then ("-tx " +  '"' + txTx + '"') else ""} \
      ~{if defined(xdefXdef) then ("-xdef " +  '"' + xdefXdef + '"') else ""} \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""} \
      ~{fastFastAFile}
  >>>
}