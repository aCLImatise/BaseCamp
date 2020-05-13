version 1.0

task Macs2Predictd {
  input {
    Array[String]+ iIFile
    String formatFormat
    String gGSize
    String tTSize
    String bwBw
    String dDMin
    String mM
    String outdirOutdir
    String rRFile
    String bufferBufferSize
    String verboseVerbose
  }
  command <<<
    macs2 predictd \
      ~{if defined(iIFile) then ("--ifile " +  '"' + iIFile + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(gGSize) then ("--gsize " +  '"' + gGSize + '"') else ""} \
      ~{if defined(tTSize) then ("--tsize " +  '"' + tTSize + '"') else ""} \
      ~{if defined(bwBw) then ("--bw " +  '"' + bwBw + '"') else ""} \
      ~{if defined(dDMin) then ("--d-min " +  '"' + dDMin + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(rRFile) then ("--rfile " +  '"' + rRFile + '"') else ""} \
      ~{if defined(bufferBufferSize) then ("--buffer-size " +  '"' + bufferBufferSize + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}