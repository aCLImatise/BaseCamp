version 1.0

task Splitrim {
  input {
    Boolean inInFile
    Boolean minMinL
    Boolean recycleRecycle
    Boolean asciiAscii
    Boolean minMinQ
    Boolean threadsThreads
    Boolean outOutPath
    Boolean prefixPrefix
    Boolean outOutEncoding
    Boolean statsStats
    Boolean histoHisto
    Boolean sortSortLenaSc
    Boolean sortSortLenDesc
    Boolean verboseVerbose
    String? inputInput
    String? outputOutput
    String? othersOthers
  }
  command <<<
    splitrim \
      ~{inputInput} \
      ~{true="--inFile" false="" inInFile} \
      ~{true="--minL" false="" minMinL} \
      ~{true="--recycle" false="" recycleRecycle} \
      ~{true="--ascii" false="" asciiAscii} \
      ~{true="--minQ" false="" minMinQ} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--outPath" false="" outOutPath} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--outEncoding" false="" outOutEncoding} \
      ~{true="--stats" false="" statsStats} \
      ~{true="--histo" false="" histoHisto} \
      ~{true="--sortLenAsc" false="" sortSortLenaSc} \
      ~{true="--sortLenDesc" false="" sortSortLenDesc} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{outputOutput} \
      ~{othersOthers}
  >>>
}