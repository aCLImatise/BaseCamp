version 1.0

task Macs2Filterdup {
  input {
    Array[String]+ iIFile
    String formatFormat
    String gGSize
    String tTSize
    String pPValue
    String keepKeepDup
    String bufferBufferSize
    String verboseVerbose
    String outdirOutdir
    String ofileOfile
    Boolean dryDryRun
  }
  command <<<
    macs2 filterdup \
      ~{if defined(iIFile) then ("--ifile " +  '"' + iIFile + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(gGSize) then ("--gsize " +  '"' + gGSize + '"') else ""} \
      ~{if defined(tTSize) then ("--tsize " +  '"' + tTSize + '"') else ""} \
      ~{if defined(pPValue) then ("--pvalue " +  '"' + pPValue + '"') else ""} \
      ~{if defined(keepKeepDup) then ("--keep-dup " +  '"' + keepKeepDup + '"') else ""} \
      ~{if defined(bufferBufferSize) then ("--buffer-size " +  '"' + bufferBufferSize + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{true="--dry-run" false="" dryDryRun}
  >>>
}