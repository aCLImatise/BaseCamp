version 1.0

task CsvtkWatch {
  input {
    Int binsBins
    Int delayDelay
    Boolean dumpDump
    String fieldField
    String imageImage
    Boolean logLog
    Boolean passPass
    Int printPrintFreq
    Boolean quietQuiet
    Boolean resetReset
    Int chunkChunkSize
    String commentCommentChar
    String delimiterDelimiter
    Boolean ignoreIgnoreEmptyRow
    Boolean ignoreIgnoreIllegalRow
    String inInFileList
    Boolean lazyLazyQuotes
    Boolean noNoHeaderRow
    Int numNumCpus
    String outOutDelimiter
    String outOutFile
    Boolean outOutTabs
    Boolean tabsTabs
    String? flagsFlags
  }
  command <<<
    csvtk watch \
      ~{flagsFlags} \
      ~{if defined(binsBins) then ("--bins " +  '"' + binsBins + '"') else ""} \
      ~{if defined(delayDelay) then ("--delay " +  '"' + delayDelay + '"') else ""} \
      ~{true="--dump" false="" dumpDump} \
      ~{if defined(fieldField) then ("--field " +  '"' + fieldField + '"') else ""} \
      ~{if defined(imageImage) then ("--image " +  '"' + imageImage + '"') else ""} \
      ~{true="--log" false="" logLog} \
      ~{true="--pass" false="" passPass} \
      ~{if defined(printPrintFreq) then ("--print-freq " +  '"' + printPrintFreq + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--reset" false="" resetReset} \
      ~{if defined(chunkChunkSize) then ("--chunk-size " +  '"' + chunkChunkSize + '"') else ""} \
      ~{if defined(commentCommentChar) then ("--comment-char " +  '"' + commentCommentChar + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{true="--ignore-empty-row" false="" ignoreIgnoreEmptyRow} \
      ~{true="--ignore-illegal-row" false="" ignoreIgnoreIllegalRow} \
      ~{if defined(inInFileList) then ("--infile-list " +  '"' + inInFileList + '"') else ""} \
      ~{true="--lazy-quotes" false="" lazyLazyQuotes} \
      ~{true="--no-header-row" false="" noNoHeaderRow} \
      ~{if defined(numNumCpus) then ("--num-cpus " +  '"' + numNumCpus + '"') else ""} \
      ~{if defined(outOutDelimiter) then ("--out-delimiter " +  '"' + outOutDelimiter + '"') else ""} \
      ~{if defined(outOutFile) then ("--out-file " +  '"' + outOutFile + '"') else ""} \
      ~{true="--out-tabs" false="" outOutTabs} \
      ~{true="--tabs" false="" tabsTabs}
  >>>
}