version 1.0

task CsvtkGrep {
  input {
    Boolean deleteDeleteMatched
    String fieldsFields
    Boolean fuzzyFuzzyFields
    Boolean ignoreIgnoreCase
    Boolean invertInvert
    Boolean lineLineNumber
    Boolean noNoHighlight
    String patternPattern
    String patternPatternFile
    Boolean useUseRegexp
    Boolean verboseVerbose
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
    csvtk grep \
      ~{flagsFlags} \
      ~{true="--delete-matched" false="" deleteDeleteMatched} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{true="--fuzzy-fields" false="" fuzzyFuzzyFields} \
      ~{true="--ignore-case" false="" ignoreIgnoreCase} \
      ~{true="--invert" false="" invertInvert} \
      ~{true="--line-number" false="" lineLineNumber} \
      ~{true="--no-highlight" false="" noNoHighlight} \
      ~{if defined(patternPattern) then ("--pattern " +  '"' + patternPattern + '"') else ""} \
      ~{if defined(patternPatternFile) then ("--pattern-file " +  '"' + patternPatternFile + '"') else ""} \
      ~{true="--use-regexp" false="" useUseRegexp} \
      ~{true="--verbose" false="" verboseVerbose} \
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