version 1.0

task CsvtkSummary {
  input {
    Int decimalDecimalWidth
    String fieldsFields
    String groupsGroups
    Boolean ignoreIgnoreNonDigits
    Int randRandSeed
    String separateSeparateR
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
    csvtk summary \
      ~{flagsFlags} \
      ~{if defined(decimalDecimalWidth) then ("--decimal-width " +  '"' + decimalDecimalWidth + '"') else ""} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{if defined(groupsGroups) then ("--groups " +  '"' + groupsGroups + '"') else ""} \
      ~{true="--ignore-non-digits" false="" ignoreIgnoreNonDigits} \
      ~{if defined(randRandSeed) then ("--rand-seed " +  '"' + randRandSeed + '"') else ""} \
      ~{if defined(separateSeparateR) then ("--separater " +  '"' + separateSeparateR + '"') else ""} \
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