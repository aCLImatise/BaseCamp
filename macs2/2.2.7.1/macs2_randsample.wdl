version 1.0

task Macs2Randsample {
  input {
    Array[String]+ iIFile
    String percentagePercentage
    String numberNumber
    String seedSeed
    String ofileOfile
    String outdirOutdir
    String tTSize
    String formatFormat
    String bufferBufferSize
    String verboseVerbose
  }
  command <<<
    macs2 randsample \
      ~{if defined(iIFile) then ("--ifile " +  '"' + iIFile + '"') else ""} \
      ~{if defined(percentagePercentage) then ("--percentage " +  '"' + percentagePercentage + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(tTSize) then ("--tsize " +  '"' + tTSize + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(bufferBufferSize) then ("--buffer-size " +  '"' + bufferBufferSize + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}