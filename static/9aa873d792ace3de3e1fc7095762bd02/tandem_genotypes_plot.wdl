version 1.0

task TandemGenotypesPlot {
  input {
    String rowsRows
    String colsCols
    String numNum
    String sampleSample
    String pointsizePointsize
    File readsReads
    Boolean verboseVerbose
    String? tandemTandemGenotypesTxt
    String? outputOutputPdf
  }
  command <<<
    tandem-genotypes-plot \
      ~{tandemTandemGenotypesTxt} \
      ~{if defined(rowsRows) then ("--rows " +  '"' + rowsRows + '"') else ""} \
      ~{if defined(colsCols) then ("--cols " +  '"' + colsCols + '"') else ""} \
      ~{if defined(numNum) then ("--num " +  '"' + numNum + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(pointsizePointsize) then ("--pointsize " +  '"' + pointsizePointsize + '"') else ""} \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{outputOutputPdf}
  >>>
}