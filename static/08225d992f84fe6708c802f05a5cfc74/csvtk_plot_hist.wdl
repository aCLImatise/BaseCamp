version 1.0

task CsvtkPlotHist {
  input {
    Int binsBins
    Int colorColorIndex
    Boolean percentilesPercentiles
    Float axisAxisWidth
    Int chunkChunkSize
    String commentCommentChar
    String dataDataField
    String delimiterDelimiter
    String formatFormat
    String groupGroupField
    Float heightHeight
    Boolean ignoreIgnoreEmptyRow
    Boolean ignoreIgnoreIllegalRow
    String inInFileList
    Int labelLabelSize
    Boolean lazyLazyQuotes
    Boolean noNoHeaderRow
    Int numNumCpus
    String outOutDelimiter
    String outOutFile
    Boolean outOutTabs
    Boolean tabsTabs
    Float tickTickWidth
    String titleTitle
    Int titleTitleSize
    Float widthWidth
    String xXMax
    String xXMin
    String xlabXlab
    String yYMax
    String yYMin
    String ylabYlab
    String? flagsFlags
  }
  command <<<
    csvtk plot hist \
      ~{flagsFlags} \
      ~{if defined(binsBins) then ("--bins " +  '"' + binsBins + '"') else ""} \
      ~{if defined(colorColorIndex) then ("--color-index " +  '"' + colorColorIndex + '"') else ""} \
      ~{true="--percentiles" false="" percentilesPercentiles} \
      ~{if defined(axisAxisWidth) then ("--axis-width " +  '"' + axisAxisWidth + '"') else ""} \
      ~{if defined(chunkChunkSize) then ("--chunk-size " +  '"' + chunkChunkSize + '"') else ""} \
      ~{if defined(commentCommentChar) then ("--comment-char " +  '"' + commentCommentChar + '"') else ""} \
      ~{if defined(dataDataField) then ("--data-field " +  '"' + dataDataField + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(groupGroupField) then ("--group-field " +  '"' + groupGroupField + '"') else ""} \
      ~{if defined(heightHeight) then ("--height " +  '"' + heightHeight + '"') else ""} \
      ~{true="--ignore-empty-row" false="" ignoreIgnoreEmptyRow} \
      ~{true="--ignore-illegal-row" false="" ignoreIgnoreIllegalRow} \
      ~{if defined(inInFileList) then ("--infile-list " +  '"' + inInFileList + '"') else ""} \
      ~{if defined(labelLabelSize) then ("--label-size " +  '"' + labelLabelSize + '"') else ""} \
      ~{true="--lazy-quotes" false="" lazyLazyQuotes} \
      ~{true="--no-header-row" false="" noNoHeaderRow} \
      ~{if defined(numNumCpus) then ("--num-cpus " +  '"' + numNumCpus + '"') else ""} \
      ~{if defined(outOutDelimiter) then ("--out-delimiter " +  '"' + outOutDelimiter + '"') else ""} \
      ~{if defined(outOutFile) then ("--out-file " +  '"' + outOutFile + '"') else ""} \
      ~{true="--out-tabs" false="" outOutTabs} \
      ~{true="--tabs" false="" tabsTabs} \
      ~{if defined(tickTickWidth) then ("--tick-width " +  '"' + tickTickWidth + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(titleTitleSize) then ("--title-size " +  '"' + titleTitleSize + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(xXMax) then ("--x-max " +  '"' + xXMax + '"') else ""} \
      ~{if defined(xXMin) then ("--x-min " +  '"' + xXMin + '"') else ""} \
      ~{if defined(xlabXlab) then ("--xlab " +  '"' + xlabXlab + '"') else ""} \
      ~{if defined(yYMax) then ("--y-max " +  '"' + yYMax + '"') else ""} \
      ~{if defined(yYMin) then ("--y-min " +  '"' + yYMin + '"') else ""} \
      ~{if defined(ylabYlab) then ("--ylab " +  '"' + ylabYlab + '"') else ""}
  >>>
}