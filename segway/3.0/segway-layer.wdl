version 1.0

task SegwayLayer {
  input {
    File bigBigBed
    File mnemonicMnemonicFile
    Boolean noNoReColor
    String sS
  }
  command <<<
    segway-layer \
      ~{if defined(bigBigBed) then ("--bigBed " +  '"' + bigBigBed + '"') else ""} \
      ~{if defined(mnemonicMnemonicFile) then ("--mnemonic-file " +  '"' + mnemonicMnemonicFile + '"') else ""} \
      ~{true="--no-recolor" false="" noNoReColor} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}