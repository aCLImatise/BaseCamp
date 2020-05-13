version 1.0

task MaskPrimers.pyExtract {
  input {
    Array[String]+ sS
    Array[String]+ oO
    String outdirOutdir
    String outOutName
    String logLog
    Boolean failedFailed
    Boolean fastFastA
    String delimDelim
    String nprocNproc
    String startStart
    Int lenLen
    Boolean revRevPr
    String modeMode
    Boolean barcodeBarcode
    String bfBf
    String pfPf
  }
  command <<<
    MaskPrimers.py extract \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--failed" false="" failedFailed} \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(delimDelim) then ("--delim " +  '"' + delimDelim + '"') else ""} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(lenLen) then ("--len " +  '"' + lenLen + '"') else ""} \
      ~{true="--revpr" false="" revRevPr} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{true="--barcode" false="" barcodeBarcode} \
      ~{if defined(bfBf) then ("--bf " +  '"' + bfBf + '"') else ""} \
      ~{if defined(pfPf) then ("--pf " +  '"' + pfPf + '"') else ""}
  >>>
}