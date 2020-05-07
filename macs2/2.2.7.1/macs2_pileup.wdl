version 1.0

task Macs2Pileup {
  input {
    Array[String]+ iIFile
    String ofileOfile
    String outdirOutdir
    String formatFormat
    Boolean bothBothDirection
    String extExtSize
    String bufferBufferSize
    String verboseVerbose
  }
  command <<<
    macs2 pileup \
      ~{if defined(iIFile) then ("--ifile " +  '"' + iIFile + '"') else ""} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--both-direction" false="" bothBothDirection} \
      ~{if defined(extExtSize) then ("--extsize " +  '"' + extExtSize + '"') else ""} \
      ~{if defined(bufferBufferSize) then ("--buffer-size " +  '"' + bufferBufferSize + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}