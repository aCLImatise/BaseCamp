version 1.0

task CsvtkReplace {
  input {
    String fieldsFields
    Boolean fuzzyFuzzyFields
    Boolean ignoreIgnoreCase
    Boolean keepKeepKey
    Int keyKeyCaptIdx
    String keyKeyMissRepl
    String kvKvFile
    Boolean kvKvFileAllLeftColumnsAsValue
    Int nrNrWidth
    String patternPattern
    String replacementReplacement
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
    csvtk replace \
      ~{flagsFlags} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{true="--fuzzy-fields" false="" fuzzyFuzzyFields} \
      ~{true="--ignore-case" false="" ignoreIgnoreCase} \
      ~{true="--keep-key" false="" keepKeepKey} \
      ~{if defined(keyKeyCaptIdx) then ("--key-capt-idx " +  '"' + keyKeyCaptIdx + '"') else ""} \
      ~{if defined(keyKeyMissRepl) then ("--key-miss-repl " +  '"' + keyKeyMissRepl + '"') else ""} \
      ~{if defined(kvKvFile) then ("--kv-file " +  '"' + kvKvFile + '"') else ""} \
      ~{true="--kv-file-all-left-columns-as-value" false="" kvKvFileAllLeftColumnsAsValue} \
      ~{if defined(nrNrWidth) then ("--nr-width " +  '"' + nrNrWidth + '"') else ""} \
      ~{if defined(patternPattern) then ("--pattern " +  '"' + patternPattern + '"') else ""} \
      ~{if defined(replacementReplacement) then ("--replacement " +  '"' + replacementReplacement + '"') else ""} \
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