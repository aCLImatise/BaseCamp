version 1.0

task Macs2Refinepeak {
  input {
    String bB
    Array[String]+ iIFile
    String formatFormat
    String cutCutOff
    String windowWindowSize
    String bufferBufferSize
    String verboseVerbose
    String outdirOutdir
    String ofileOfile
    String oOPrefix
  }
  command <<<
    macs2 refinepeak \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(iIFile) then ("--ifile " +  '"' + iIFile + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window-size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(bufferBufferSize) then ("--buffer-size " +  '"' + bufferBufferSize + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{if defined(oOPrefix) then ("--o-prefix " +  '"' + oOPrefix + '"') else ""}
  >>>
}